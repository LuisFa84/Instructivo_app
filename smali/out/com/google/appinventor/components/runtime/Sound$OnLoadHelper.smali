.class Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;
.super Ljava/lang/Object;
.source "Sound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Sound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLoadHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/Sound;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Sound;Lcom/google/appinventor/components/runtime/Sound$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/Sound;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/Sound$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;-><init>(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void
.end method


# virtual methods
.method public setOnloadCompleteListener(Landroid/media/SoundPool;)V
    .registers 3
    .param p1, "soundPool"    # Landroid/media/SoundPool;

    .prologue
    .line 86
    new-instance v0, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper$1;-><init>(Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 91
    return-void
.end method
