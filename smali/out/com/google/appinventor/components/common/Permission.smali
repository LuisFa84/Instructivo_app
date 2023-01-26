.class public final enum Lcom/google/appinventor/components/common/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/Permission;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/Permission;

.field public static final enum AccountManager:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Audio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Bluetooth:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Camera:Lcom/google/appinventor/components/common/Permission;

.field public static final enum CoarseLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum FineLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum GetAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Internet:Lcom/google/appinventor/components/common/Permission;

.field public static final enum LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ManageAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum MockLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

.field public static final enum NetworkState:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadContacts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field public static final enum UseCredentials:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Vibrate:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WifiState:Lcom/google/appinventor/components/common/Permission;

.field public static final enum WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "CoarseLocation"

    const-string v4, "ACCESS_COARSE_LOCATION"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "FineLocation"

    const-string v4, "ACCESS_FINE_LOCATION"

    invoke-direct {v2, v3, v6, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "MockLocation"

    const-string v4, "ACCESS_MOCK_LOCATION"

    invoke-direct {v2, v3, v7, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "LocationExtraCommands"

    const-string v4, "ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-direct {v2, v3, v8, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    .line 19
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "ReadExternalStorage"

    const-string v4, "READ_EXTERNAL_STORAGE"

    invoke-direct {v2, v3, v9, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 20
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "WriteExternalStorage"

    const/4 v4, 0x5

    const-string v5, "WRITE_EXTERNAL_STORAGE"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 21
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "Camera"

    const/4 v4, 0x6

    const-string v5, "CAMERA"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    .line 22
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "Audio"

    const/4 v4, 0x7

    const-string v5, "RECORD_AUDIO"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    .line 23
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "Vibrate"

    const/16 v4, 0x8

    const-string v5, "VIBRATE"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    .line 24
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "Internet"

    const/16 v4, 0x9

    const-string v5, "INTERNET"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    .line 25
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "NearFieldCommunication"

    const/16 v4, 0xa

    const-string v5, "NFC"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    .line 26
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "Bluetooth"

    const/16 v4, 0xb

    const-string v5, "BLUETOOTH"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    .line 27
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "BluetoothAdmin"

    const/16 v4, 0xc

    const-string v5, "BLUETOOTH_ADMIN"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    .line 28
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "WifiState"

    const/16 v4, 0xd

    const-string v5, "ACCESS_WIFI_STATE"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    .line 29
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "NetworkState"

    const/16 v4, 0xe

    const-string v5, "ACCESS_NETWORK_STATE"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    .line 30
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "AccountManager"

    const/16 v4, 0xf

    const-string v5, "ACCOUNT_MANAGER"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    .line 31
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "ManageAccounts"

    const/16 v4, 0x10

    const-string v5, "MANAGE_ACCOUNTS"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 32
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "GetAccounts"

    const/16 v4, 0x11

    const-string v5, "GET_ACCOUNTS"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 33
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "ReadContacts"

    const/16 v4, 0x12

    const-string v5, "READ_CONTACTS"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    .line 34
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "UseCredentials"

    const/16 v4, 0x13

    const-string v5, "USE_CREDENTIALS"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    .line 14
    const/16 v2, 0x14

    new-array v2, v2, [Lcom/google/appinventor/components/common/Permission;

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->$VALUES:[Lcom/google/appinventor/components/common/Permission;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->lookup:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/google/appinventor/components/common/Permission;->values()[Lcom/google/appinventor/components/common/Permission;

    move-result-object v2

    array-length v3, v2

    .local v0, "perm":Lcom/google/appinventor/components/common/Permission;
    :goto_179
    if-ge v1, v3, :cond_189

    aget-object v0, v2, v1

    .line 50
    sget-object v4, Lcom/google/appinventor/components/common/Permission;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_179

    .line 52
    :cond_189
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "perm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/google/appinventor/components/common/Permission;->value:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .registers 2
    .param p0, "perm"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Permission;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->$VALUES:[Lcom/google/appinventor/components/common/Permission;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/appinventor/components/common/Permission;->value:Ljava/lang/String;

    return-object v0
.end method
