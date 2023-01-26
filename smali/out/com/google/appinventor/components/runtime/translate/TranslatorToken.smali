.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.super Ljava/lang/Object;
.source "TranslatorToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;,
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3746
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\n\u0008tr.proto\"D\n\u0008unsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\u0008unsigned\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\u008f\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0015\n\u0005token\u0018\u0002 \u0001(\u000b2\u0006.token\u0012\u0013\n\u000btotranslate\u0018\u0003 \u0001(\t\u0012\u0014\n\u000clanguagecode\u0018\u0004 \u0001(\t\u0012\u0016\n\u000esourcelanguage\u0018\u0005 \u0001(\t\u0012\u0016\n\u000etargetlanguage\u0018\u0006 \u0001(\t\"E\n\u0008response\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0012\n\ntranslated\u0018\u0003"

    aput-object v2, v1, v7

    const-string v2, " \u0001(\tBF\n3com.google.appinventor.components.runtime.translateB\u000fTranslatorToken"

    aput-object v2, v1, v8

    .line 3760
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;-><init>()V

    .line 3768
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v7, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3769
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3773
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3774
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Huuid"

    aput-object v5, v4, v7

    const-string v5, "Version"

    aput-object v5, v4, v8

    const-string v5, "Generation"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3779
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3780
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Version"

    aput-object v5, v4, v7

    const-string v5, "Keyid"

    aput-object v5, v4, v8

    const-string v5, "Generation"

    aput-object v5, v4, v9

    const-string v5, "Unsigned"

    aput-object v5, v4, v10

    const-string v5, "Signature"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3785
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3786
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Version"

    aput-object v5, v4, v7

    const-string v5, "Token"

    aput-object v5, v4, v8

    const-string v5, "Totranslate"

    aput-object v5, v4, v9

    const-string v5, "Languagecode"

    aput-object v5, v4, v10

    const-string v5, "Sourcelanguage"

    aput-object v5, v4, v6

    const/4 v5, 0x5

    const-string v6, "Targetlanguage"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3791
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3792
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Version"

    aput-object v5, v4, v7

    const-string v5, "Status"

    aput-object v5, v4, v8

    const-string v5, "Translated"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3796
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .prologue
    .line 3741
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 10
    return-void
.end method
