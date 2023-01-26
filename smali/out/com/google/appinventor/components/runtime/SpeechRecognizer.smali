.class public Lcom/google/appinventor/components/runtime/SpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;
.implements Lcom/google/appinventor/components/runtime/SpeechListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using Voice Recognition to convert from speech to text"
    iconName = "images/speechRecognizer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO",
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private language:Ljava/lang/String;

.field private recognizerIntent:Landroid/content/Intent;

.field private result:Ljava/lang/String;

.field private speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

.field private useLegacy:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    .line 69
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->language:Ljava/lang/String;

    .line 80
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->UseLegacy(Z)V

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SpeechRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    return p1
.end method


# virtual methods
.method public AfterGettingText(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "partial"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 189
    const-string v0, "AfterGettingText"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public BeforeGettingText()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 175
    const-string v0, "BeforeGettingText"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public GetText()V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->havePermission:Z

    if-nez v1, :cond_10

    .line 131
    move-object v0, p0

    .line 132
    .local v0, "me":Lcom/google/appinventor/components/runtime/SpeechRecognizer;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Lcom/google/appinventor/components/runtime/SpeechRecognizer;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    .end local v0    # "me":Lcom/google/appinventor/components/runtime/SpeechRecognizer;
    :goto_f
    return-void

    .line 151
    :cond_10
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->BeforeGettingText()V

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->addListener(Lcom/google/appinventor/components/runtime/SpeechListener;)V

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->start()V

    goto :goto_f
.end method

.method public Language()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->language:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 112
    :goto_f
    return-void

    .line 110
    :cond_10
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f
.end method

.method public Result()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    return-object v0
.end method

.method public Stop()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->stop()V

    .line 167
    :cond_9
    return-void
.end method

.method public UseLegacy(Z)V
    .registers 5
    .param p1, "useLegacy"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, a separate dialog is used to recognize speech (the default). If false, speech is recognized in the background and partial results are also provided."
    .end annotation

    .annotation build Lcom/google/appinventor/components/annotations/UsesQueries;
        intents = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                actionElements = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                        name = "android.speech.RecognitionService"
                    .end subannotation
                }
            .end subannotation
        }
    .end annotation

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    .line 255
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    .line 256
    if-nez p1, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_19

    .line 257
    :cond_d
    new-instance v0, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/IntentBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 261
    :goto_18
    return-void

    .line 259
    :cond_19
    new-instance v0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    goto :goto_18
.end method

.method public UseLegacy()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, an app can retain their older behaviour."
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->useLegacy:Z

    return v0
.end method

.method public onClear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->Stop()V

    .line 222
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->speechRecognizerController:Lcom/google/appinventor/components/runtime/SpeechRecognizerController;

    .line 223
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 224
    return-void
.end method

.method public onError(I)V
    .registers 5
    .param p1, "errorNumber"    # I

    .prologue
    .line 215
    const-string v0, "GetText"

    .line 216
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->result:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->AfterGettingText(Ljava/lang/String;Z)V

    .line 208
    return-void
.end method
