.class Lcom/google/appinventor/components/runtime/Map$10;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic val$feature:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Map;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$10;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Map$10;->val$feature:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$10;->val$feature:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Click()V

    .line 793
    return-void
.end method
