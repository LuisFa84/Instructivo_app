.class Lcom/google/appinventor/components/runtime/CloudDB$9$1;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/CloudDB$9;

.field final synthetic val$listValue:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB$9;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/CloudDB$9;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$9$1;->this$1:Lcom/google/appinventor/components/runtime/CloudDB$9;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$9$1;->val$listValue:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$9$1;->this$1:Lcom/google/appinventor/components/runtime/CloudDB$9;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$9$1;->val$listValue:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->TagList(Ljava/util/List;)V

    .line 1148
    return-void
.end method
