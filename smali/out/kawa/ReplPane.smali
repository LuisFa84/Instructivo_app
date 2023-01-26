.class public Lkawa/ReplPane;
.super Ljavax/swing/JTextPane;
.source "ReplPane.java"

# interfaces
.implements Ljava/awt/event/KeyListener;


# static fields
.field public static final PaintableAttribute:Ljava/lang/Object;

.field public static final PaintableElementName:Ljava/lang/String; = "Paintable"

.field public static final ViewableAttribute:Ljava/lang/Object;

.field public static final ViewableElementName:Ljava/lang/String; = "Viewable"


# instance fields
.field document:Lkawa/ReplDocument;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/String;

    const-string v1, "Viewable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/String;

    const-string v1, "Paintable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkawa/ReplDocument;)V
    .registers 4
    .param p1, "document"    # Lkawa/ReplDocument;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljavax/swing/JTextPane;-><init>(Ljavax/swing/text/StyledDocument;)V

    .line 38
    iput-object p1, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    .line 39
    iput-object p0, p1, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 40
    iget v1, p1, Lkawa/ReplDocument;->paneCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lkawa/ReplDocument;->paneCount:I

    .line 42
    invoke-virtual {p0, p0}, Lkawa/ReplPane;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 43
    invoke-virtual {p0, p1}, Lkawa/ReplPane;->addFocusListener(Ljava/awt/event/FocusListener;)V

    .line 45
    invoke-virtual {p0}, Lkawa/ReplPane;->getEditorKit()Ljavax/swing/text/EditorKit;

    move-result-object v0

    .line 46
    .local v0, "kit":Ljavax/swing/text/EditorKit;
    iget v1, p1, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {p0, v1}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected createDefaultEditorKit()Ljavax/swing/text/EditorKit;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lkawa/ReplEditorKit;

    invoke-direct {v0, p0}, Lkawa/ReplEditorKit;-><init>(Lkawa/ReplPane;)V

    return-object v0
.end method

.method enter()V
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0xa

    .line 91
    invoke-virtual {p0}, Lkawa/ReplPane;->getCaretPosition()I

    move-result v6

    .line 92
    .local v6, "pos":I
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v9, v9, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    iget-object v0, v9, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 93
    .local v0, "b":Lgnu/lists/CharBuffer;
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 94
    .local v2, "len":I
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    const/4 v10, -0x1

    iput v10, v9, Lkawa/ReplDocument;->endMark:I

    .line 95
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v9, v9, Lkawa/ReplDocument;->outputMark:I

    if-lt v6, v9, :cond_59

    .line 97
    invoke-virtual {v0, v11, v6}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v4

    .line 98
    .local v4, "lineAfterCaret":I
    if-ne v4, v2, :cond_34

    .line 100
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v8, v8, Lkawa/ReplDocument;->outputMark:I

    if-le v2, v8, :cond_4d

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v0, v8}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_4d

    .line 101
    add-int/lit8 v4, v4, -0x1

    .line 105
    :cond_34
    :goto_34
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iput v4, v8, Lkawa/ReplDocument;->endMark:I

    .line 111
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v9, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    monitor-enter v9

    .line 113
    :try_start_3d
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v9
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_56

    .line 115
    if-gt v6, v4, :cond_4c

    .line 116
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 138
    .end local v4    # "lineAfterCaret":I
    :cond_4c
    :goto_4c
    return-void

    .line 103
    .restart local v4    # "lineAfterCaret":I
    :cond_4d
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    const-string v9, "\n"

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Lkawa/ReplDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V

    goto :goto_34

    .line 114
    :catchall_56
    move-exception v8

    :try_start_57
    monitor-exit v9
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v8

    .line 120
    .end local v4    # "lineAfterCaret":I
    :cond_59
    if-nez v6, :cond_ad

    move v5, v8

    .line 121
    .local v5, "lineBefore":I
    :goto_5c
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v9, v5}, Lkawa/ReplDocument;->getCharacterElement(I)Ljavax/swing/text/Element;

    move-result-object v1

    .line 122
    .local v1, "el":Ljavax/swing/text/Element;
    invoke-virtual {v0, v11, v6}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v3

    .line 124
    .local v3, "lineAfter":I
    invoke-interface {v1}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v9

    sget-object v10, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    invoke-interface {v9, v10}, Ljavax/swing/text/AttributeSet;->isEqual(Ljavax/swing/text/AttributeSet;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 125
    invoke-interface {v1}, Ljavax/swing/text/Element;->getEndOffset()I

    move-result v5

    .line 127
    :cond_76
    if-gez v3, :cond_b6

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v2}, Lgnu/lists/CharBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "str":Ljava/lang/String;
    :goto_8d
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v9, v9, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {p0, v9}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 132
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    sget-object v10, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    invoke-virtual {v9, v7, v10}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 134
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v9, v9, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    if-eqz v9, :cond_4c

    .line 135
    iget-object v9, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v9, v9, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v7, v8, v10}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    goto :goto_4c

    .line 120
    .end local v1    # "el":Ljavax/swing/text/Element;
    .end local v3    # "lineAfter":I
    .end local v5    # "lineBefore":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_ad
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v0, v11, v9}, Lgnu/lists/CharBuffer;->lastIndexOf(II)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    goto :goto_5c

    .line 130
    .restart local v1    # "el":Ljavax/swing/text/Element;
    .restart local v3    # "lineAfter":I
    .restart local v5    # "lineBefore":I
    :cond_b6
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v0, v5, v9}, Lgnu/lists/CharBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_8d
.end method

.method public getInputAttributes()Ljavax/swing/text/MutableAttributeSet;
    .registers 2

    .prologue
    .line 142
    sget-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    return-object v0
.end method

.method public getStderr()Lgnu/mapping/OutPort;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    return-object v0
.end method

.method public getStdout()Lgnu/mapping/OutPort;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .registers 4
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    .line 147
    .local v0, "code":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 149
    invoke-virtual {p0}, Lkawa/ReplPane;->enter()V

    .line 150
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 152
    :cond_e
    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .registers 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 154
    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .registers 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    .line 157
    return-void
.end method

.method public removeNotify()V
    .registers 3

    .prologue
    .line 59
    invoke-super {p0}, Ljavax/swing/JTextPane;->removeNotify()V

    .line 60
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v1, v0, Lkawa/ReplDocument;->paneCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lkawa/ReplDocument;->paneCount:I

    if-nez v1, :cond_12

    .line 61
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v0}, Lkawa/ReplDocument;->close()V

    .line 62
    :cond_12
    return-void
.end method
