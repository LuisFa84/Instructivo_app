.class public Lgnu/bytecode/ZipLoader;
.super Ljava/lang/ClassLoader;
.source "ZipLoader.java"


# instance fields
.field private loadedClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field size:I

.field zar:Ljava/util/zip/ZipFile;

.field private zipname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    .line 33
    const/4 v2, 0x0

    iput v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    .line 34
    iget-object v2, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    .local v0, "e":Ljava/util/Enumeration;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 38
    .local v1, "ent":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_15

    .line 39
    iget v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    goto :goto_15

    .line 42
    .end local v1    # "ent":Ljava/util/zip/ZipEntry;
    :cond_2e
    new-instance v2, Ljava/util/Vector;

    iget v3, p0, Lgnu/bytecode/ZipLoader;->size:I

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 149
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    .line 150
    return-void
.end method

.method public loadAllClasses()Ljava/lang/Class;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 121
    iget-object v8, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 122
    .local v2, "e":Ljava/util/Enumeration;
    const/4 v3, 0x0

    .line 123
    .local v3, "mainClass":Ljava/lang/Class;
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 125
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 127
    .local v4, "member":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "/class"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-int v5, v8

    .line 130
    .local v5, "member_size":I
    iget-object v8, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v8, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 131
    .local v7, "strm":Ljava/io/InputStream;
    new-array v0, v5, [B

    .line 132
    .local v0, "bytes":[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 133
    invoke-virtual {p0, v6, v0, v11, v5}, Lgnu/bytecode/ZipLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    .line 134
    .local v1, "clas":Ljava/lang/Class;
    if-nez v3, :cond_4b

    .line 135
    move-object v3, v1

    .line 136
    :cond_4b
    iget-object v8, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    iget-object v8, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8

    .line 139
    .end local v0    # "bytes":[B
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v4    # "member":Ljava/util/zip/ZipEntry;
    .end local v5    # "member_size":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "strm":Ljava/io/InputStream;
    :cond_56
    invoke-virtual {p0}, Lgnu/bytecode/ZipLoader;->close()V

    .line 140
    return-object v3
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v10, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 53
    .local v4, "index":I
    if-ltz v4, :cond_18

    .line 54
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 110
    .local v1, "clas":Ljava/lang/Class;
    :cond_12
    :goto_12
    if-eqz p2, :cond_17

    .line 111
    invoke-virtual {p0, v1}, Lgnu/bytecode/ZipLoader;->resolveClass(Ljava/lang/Class;)V

    .line 112
    :cond_17
    return-object v1

    .line 55
    .end local v1    # "clas":Ljava/lang/Class;
    :cond_18
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-nez v10, :cond_2d

    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    iget v11, p0, Lgnu/bytecode/ZipLoader;->size:I

    mul-int/lit8 v11, v11, 0x2

    if-ne v10, v11, :cond_2d

    .line 56
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "clas":Ljava/lang/Class;
    goto :goto_12

    .line 59
    .end local v1    # "clas":Ljava/lang/Class;
    :cond_2d
    const/4 v8, 0x0

    .line 60
    .local v8, "reopened":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".class"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "member_name":Ljava/lang/String;
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-nez v10, :cond_57

    .line 64
    :try_start_4d
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v11, p0, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_56} :catch_69

    .line 65
    const/4 v8, 0x1

    .line 75
    :cond_57
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 76
    .local v5, "member":Ljava/util/zip/ZipEntry;
    if-nez v5, :cond_bd

    .line 77
    if-eqz v8, :cond_64

    .line 79
    :try_start_61
    invoke-virtual {p0}, Lgnu/bytecode/ZipLoader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_9b

    .line 84
    :cond_64
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "clas":Ljava/lang/Class;
    goto :goto_12

    .line 67
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v5    # "member":Ljava/util/zip/ZipEntry;
    :catch_69
    move-exception v3

    .line 69
    .local v3, "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException while loading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from ziparchive \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 80
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "member":Ljava/util/zip/ZipEntry;
    :catch_9b
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to close \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    :cond_bd
    :try_start_bd
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    long-to-int v7, v10

    .line 91
    .local v7, "member_size":I
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 92
    .local v9, "strm":Ljava/io/InputStream;
    new-array v0, v7, [B

    .line 93
    .local v0, "bytes":[B
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v10, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 94
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v0, v10, v7}, Lgnu/bytecode/ZipLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    .line 95
    .restart local v1    # "clas":Ljava/lang/Class;
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v10, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    iget-object v10, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    iget v10, p0, Lgnu/bytecode/ZipLoader;->size:I

    mul-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ne v10, v11, :cond_12

    .line 98
    invoke-virtual {p0}, Lgnu/bytecode/ZipLoader;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_f0} :catch_f2

    goto/16 :goto_12

    .line 100
    .end local v0    # "bytes":[B
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v7    # "member_size":I
    .end local v9    # "strm":Ljava/io/InputStream;
    :catch_f2
    move-exception v3

    .line 102
    .restart local v3    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException while loading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from ziparchive \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
