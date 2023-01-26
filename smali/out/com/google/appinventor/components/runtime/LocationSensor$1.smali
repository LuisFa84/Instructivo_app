.class Lcom/google/appinventor/components/runtime/LocationSensor$1;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v3, "RefreshProvider"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 701
    return-void
.end method
