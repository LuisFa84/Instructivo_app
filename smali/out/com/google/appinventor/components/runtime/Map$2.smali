.class Lcom/google/appinventor/components/runtime/Map$2;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->Save(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic val$featuresToSave:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/util/List;)V
    .registers 19
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Map;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p7, "append"    # Z
    .param p8, "async"    # Z

    .prologue
    .line 623
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$2;->this$0:Lcom/google/appinventor/components/runtime/Map;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map$2;->val$featuresToSave:Ljava/util/List;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method protected processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .registers 6
    .param p1, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .prologue
    .line 626
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Map$2;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "uri":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 628
    .local v0, "target":Ljava/io/File;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Map$2;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Map$2;->val$featuresToSave:Ljava/util/List;

    invoke-static {v2, v3, v0}, Lcom/google/appinventor/components/runtime/Map;->access$000(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V

    .line 629
    return-void
.end method
