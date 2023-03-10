.class public final Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_NOTIFICATION_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_PERSON:Ljava/lang/String; = "person"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDataUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field private final mPerson:Landroidx/core/app/Person;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "person"    # Landroidx/core/app/Person;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2599
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    .line 2615
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 2616
    iput-wide p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    .line 2617
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    .line 2618
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2635
    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 2636
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2757
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Landroid/os/Bundle;

    .line 2758
    .local v1, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2759
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1c

    .line 2760
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2759
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2762
    :cond_1c
    return-object v1
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2782
    :try_start_1
    const-string v3, "text"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "time"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_11
    move-object v1, v4

    .line 2817
    :cond_12
    :goto_12
    return-object v1

    .line 2786
    :cond_13
    const/4 v2, 0x0

    .line 2787
    .local v2, "person":Landroidx/core/app/Person;
    const-string v3, "person"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2789
    const-string v3, "person"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v2

    .line 2802
    :cond_26
    :goto_26
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    const-string v3, "text"

    .line 2803
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "time"

    .line 2804
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v1, v3, v6, v7, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 2807
    .local v1, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    const-string v3, "type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    const-string v3, "uri"

    .line 2808
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2809
    const-string v3, "type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "uri"

    .line 2810
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 2809
    invoke-virtual {v1, v5, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    .line 2812
    :cond_58
    const-string v3, "extras"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2813
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "extras"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_12

    .line 2816
    .end local v1    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .end local v2    # "person":Landroidx/core/app/Person;
    :catch_6e
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    move-object v1, v4

    .line 2817
    goto :goto_12

    .line 2790
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "person":Landroidx/core/app/Person;
    :cond_71
    const-string v3, "sender_person"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_8c

    .line 2793
    const-string v3, "sender_person"

    .line 2794
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 2793
    invoke-static {v3}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v2

    goto :goto_26

    .line 2795
    :cond_8c
    const-string v3, "sender"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2797
    new-instance v3, Landroidx/core/app/Person$Builder;

    invoke-direct {v3}, Landroidx/core/app/Person$Builder;-><init>()V

    const-string v5, "sender"

    .line 2798
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v3

    .line 2799
    invoke-virtual {v3}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;
    :try_end_a6
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_a6} :catch_6e

    move-result-object v2

    goto/16 :goto_26
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .registers 5
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2767
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2768
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$MessagingStyle$Message;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v3, p0

    if-ge v0, v3, :cond_20

    .line 2769
    aget-object v3, p0, v0

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    .line 2770
    aget-object v3, p0, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v1

    .line 2771
    .local v1, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    if-eqz v1, :cond_1d

    .line 2772
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2768
    .end local v1    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2776
    :cond_20
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 2726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2727
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 2728
    const-string v1, "text"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2730
    :cond_10
    const-string v1, "time"

    iget-wide v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2731
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-eqz v1, :cond_37

    .line 2734
    const-string v1, "sender"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2737
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_59

    .line 2738
    const-string v1, "sender_person"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v2}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2743
    :cond_37
    :goto_37
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 2744
    const-string v1, "type"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    :cond_42
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_4d

    .line 2747
    const-string v1, "uri"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2749
    :cond_4d
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_58

    .line 2750
    const-string v1, "extras"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2752
    :cond_58
    return-object v0

    .line 2740
    :cond_59
    const-string v1, "person"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v2}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_37
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2713
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2722
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2690
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerson()Landroidx/core/app/Person;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2707
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2701
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 2679
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 2684
    iget-wide v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 3
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 2668
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 2669
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 2670
    return-object p0
.end method
