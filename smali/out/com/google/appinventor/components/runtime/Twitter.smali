.class public final Lcom/google/appinventor/components/runtime/Twitter;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Twitter.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A non-visible component that enables communication with <a href=\"http://www.twitter.com\" target=\"_blank\">Twitter</a>. Once a user has logged into their Twitter account (and the authorization has been confirmed successful by the <code>IsAuthorized</code> event), many more operations are available:<ul><li> Searching Twitter for tweets or labels (<code>SearchTwitter</code>)</li>\n<li> Sending a Tweet (<code>Tweet</code>)     </li>\n<li> Sending a Tweet with an Image (<code>TweetWithImage</code>)     </li>\n<li> Directing a message to a specific user      (<code>DirectMessage</code>)</li>\n <li> Receiving the most recent messages directed to the logged-in user      (<code>RequestDirectMessages</code>)</li>\n <li> Following a specific user (<code>Follow</code>)</li>\n<li> Ceasing to follow a specific user (<code>StopFollowing</code>)</li>\n<li> Getting a list of users following the logged-in user      (<code>RequestFollowers</code>)</li>\n <li> Getting the most recent messages of users followed by the      logged-in user (<code>RequestFriendTimeline</code>)</li>\n <li> Getting the most recent mentions of the logged-in user      (<code>RequestMentions</code>)</li></ul></p>\n <p>You must obtain a Consumer Key and Consumer Secret for Twitter authorization  specific to your app from http://twitter.com/oauth_clients/new"
    iconName = "images/twitter.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.MAIN"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.google.appinventor.components.runtime.WebViewActivity"
            screenOrientation = "behind"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "twitter4j.jar,twitter4jmedia.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final ACCESS_SECRET_TAG:Ljava/lang/String; = "TwitterOauthAccessSecret"

.field private static final ACCESS_TOKEN_TAG:Ljava/lang/String; = "TwitterOauthAccessToken"

.field private static final CALLBACK_URL:Ljava/lang/String; = "appinventor://twitter"

.field private static final MAX_CHARACTERS:Ljava/lang/String; = "160"

.field private static final MAX_MENTIONS_RETURNED:Ljava/lang/String; = "20"

.field private static final URL_HOST:Ljava/lang/String; = "twitter"

.field private static final WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;


# instance fields
.field private TwitPic_API_Key:Ljava/lang/String;

.field private accessToken:Ltwitter4j/auth/AccessToken;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final directMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final followers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final mentions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCode:I

.field private requestToken:Ltwitter4j/auth/RequestToken;

.field private final searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final timeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private twitter:Ltwitter4j/Twitter;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    const-class v0, Lcom/google/appinventor/components/runtime/WebViewActivity;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Twitter;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 172
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->mentions:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->followers:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->directMessages:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;

    .line 182
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Twitter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 184
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->retrieveAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestCode:I

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Twitter;->checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Twitter;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->mentions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->followers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->directMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/RequestToken;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;
    .param p1, "x1"    # Ltwitter4j/auth/RequestToken;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/appinventor/components/runtime/Twitter;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Twitter;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)Ltwitter4j/auth/AccessToken;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;
    .param p1, "x1"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Twitter;
    .param p1, "x1"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Twitter;->saveAccessToken(Ltwitter4j/auth/AccessToken;)V

    return-void
.end method

.method private checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "myConsumerKey"    # Ljava/lang/String;
    .param p2, "myConsumerSecret"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1082
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->retrieveAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 1083
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    if-nez v3, :cond_c

    .line 1107
    :goto_b
    return v2

    .line 1087
    :cond_c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v3, :cond_1b

    .line 1088
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 1091
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-interface {v3, v4}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_2b} :catch_4a

    .line 1097
    :goto_2b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_43

    .line 1100
    :try_start_37
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v3}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v1

    .line 1101
    .local v1, "user":Ltwitter4j/User;
    invoke-interface {v1}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;
    :try_end_43
    .catch Ltwitter4j/TwitterException; {:try_start_37 .. :try_end_43} :catch_45

    .line 1107
    .end local v1    # "user":Ltwitter4j/User;
    :cond_43
    const/4 v2, 0x1

    goto :goto_b

    .line 1102
    :catch_45
    move-exception v0

    .line 1103
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    goto :goto_b

    .line 1094
    .end local v0    # "e":Ltwitter4j/TwitterException;
    :catch_4a
    move-exception v3

    goto :goto_2b
.end method

.method private deAuthorize()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 472
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 473
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 474
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 476
    .local v0, "oldTwitter":Ltwitter4j/Twitter;
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 478
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->saveAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 482
    if-eqz v0, :cond_17

    .line 483
    invoke-interface {v0, v2}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 485
    :cond_17
    return-void
.end method

.method private retrieveAccessToken()Ltwitter4j/auth/AccessToken;
    .registers 6

    .prologue
    .line 454
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "TwitterOauthAccessToken"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "TwitterOauthAccessSecret"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "secret":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    .line 457
    :cond_20
    const/4 v2, 0x0

    .line 459
    :goto_21
    return-object v2

    :cond_22
    new-instance v2, Ltwitter4j/auth/AccessToken;

    invoke-direct {v2, v1, v0}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private saveAccessToken(Ltwitter4j/auth/AccessToken;)V
    .registers 5
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_16

    .line 443
    const-string v1, "TwitterOauthAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    const-string v1, "TwitterOauthAccessSecret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    :goto_12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 451
    return-void

    .line 446
    :cond_16
    const-string v1, "TwitterOauthAccessToken"

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string v1, "TwitterOauthAccessSecret"

    .line 448
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_12
.end method


# virtual methods
.method public Authorize()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Redirects user to login to Twitter via the Web browser using the OAuth protocol if we don\'t already have authorization."
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 303
    :cond_10
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Authorize"

    const/16 v4, 0x12e

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 355
    :goto_1c
    return-void

    .line 307
    :cond_1d
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v2, :cond_2c

    .line 308
    new-instance v2, Ltwitter4j/TwitterFactory;

    invoke-direct {v2}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v2}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 310
    :cond_2c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 311
    .local v0, "myConsumerKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 312
    .local v1, "myConsumerSecret":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Twitter$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public CheckAuthorized()V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether we already have access, and if so, causes IsAuthorized event handler to be called."
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 365
    .local v0, "myConsumerKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 366
    .local v1, "myConsumerSecret":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Twitter$2;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public ConsumerKey()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public ConsumerKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "consumerKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The the consumer key to be used when authorizing with Twitter via OAuth."
    .end annotation

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public ConsumerSecret()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public ConsumerSecret(Ljava/lang/String;)V
    .registers 2
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The consumer secret to be used when authorizing with Twitter via OAuth"
    .end annotation

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public DeAuthorize()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes Twitter authorization from this running app instance"
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    .line 468
    return-void
.end method

.method public DirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This sends a direct (private) message to the specified user.  The message will be trimmed if it exceeds 160characters. <p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 854
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "DirectMessage"

    const/16 v2, 0x136

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 868
    :goto_1d
    return-void

    .line 858
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Twitter$9;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public DirectMessages()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains a list of the most recent messages mentioning the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>Authorized</code> event.</li> <li> Call the <code>RequestDirectMessages</code> method.</li> <li> Wait for the <code>DirectMessagesReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of direct messages retrieved (and maintain that value until any subsequent call to <code>RequestDirectMessages</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->directMessages:Ljava/util/List;

    return-object v0
.end method

.method public DirectMessagesReceived(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the recent messages requested through <code>RequestDirectMessages</code> have been retrieved. A list of the messages can then be found in the <code>messages</code> parameter or the <code>Messages</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "DirectMessagesReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public Follow(Ljava/lang/String;)V
    .registers 8
    .param p1, "user"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 876
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Follow"

    const/16 v2, 0x137

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 890
    :goto_1d
    return-void

    .line 880
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$10;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$10;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public Followers()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains a list of the followers of the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Call the <code>RequestFollowers</code> method.</li> <li> Wait for the <code>FollowersReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of followers (and maintain its value until any subsequent call to <code>RequestFollowers</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->followers:Ljava/util/List;

    return-object v0
.end method

.method public FollowersReceived(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when all of the followers of the logged-in user requested through <code>RequestFollowers</code> have been retrieved. A list of the followers can then be found in the <code>followers</code> parameter or the <code>Followers</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "followers2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FollowersReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 715
    return-void
.end method

.method public FriendTimeline()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains the 20 most recent messages of users being followed.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Specify users to follow with one or more calls to the <code>Follow</code> method.</li> <li> Call the <code>RequestFriendTimeline</code> method.</li> <li> Wait for the <code>FriendTimelineReceived</code> event.</li> </ol>\nThe value of this property will then be set to the list of messages (and maintain its value until any subsequent call to <code>RequestFriendTimeline</code>."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;

    return-object v0
.end method

.method public FriendTimelineReceived(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the messages requested through <code>RequestFriendTimeline</code> have been retrieved. The <code>timeline</code> parameter and the <code>Timeline</code> property will contain a list of lists, where each sub-list contains a status update of the form (username message)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "timeline":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "FriendTimelineReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 967
    return-void
.end method

.method public IsAuthorized()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised after the program calls <code>Authorize</code> if the authorization was successful.  It is also called after a call to <code>CheckAuthorized</code> if we already have a valid access token. After this event has been raised, any other method for this component can be called."
    .end annotation

    .prologue
    .line 292
    const-string v0, "IsAuthorized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public Login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Twitter\'s API no longer supports login via username and password. Use the Authorize call instead."
        userVisible = false
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Login"

    const/16 v2, 0x12d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public Mentions()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains a list of mentions of the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Call the <code>RequestMentions</code> method.</li> <li> Wait for the <code>MentionsReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of mentions (and will maintain its value until any subsequent calls to <code>RequestMentions</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->mentions:Ljava/util/List;

    return-object v0
.end method

.method public MentionsReceived(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the mentions of the logged-in user requested through <code>RequestMentions</code> have been retrieved.  A list of the mentions can then be found in the <code>mentions</code> parameter or the <code>Mentions</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "mentions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "MentionsReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public RequestDirectMessages()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Requests the 20 most recent direct messages sent to the logged-in user.  When the messages have been retrieved, the system will raise the <code>DirectMessagesReceived</code> event and set the <code>DirectMessages</code> property to the list of messages.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 762
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "RequestDirectMessages"

    const/16 v2, 0x135

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 795
    :goto_1d
    return-void

    .line 767
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$8;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$8;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public RequestFollowers()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 669
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "RequestFollowers"

    const/16 v2, 0x134

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 701
    :goto_1d
    return-void

    .line 674
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$7;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public RequestFriendTimeline()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 920
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "RequestFriendTimeline"

    const/16 v2, 0x139

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 952
    :goto_1d
    return-void

    .line 925
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$12;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$12;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public RequestMentions()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Requests the 20 most recent mentions of the logged-in user.  When the mentions have been retrieved, the system will raise the <code>MentionsReceived</code> event and set the <code>Mentions</code> property to the list of mentions.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 594
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "RequestMentions"

    const/16 v2, 0x133

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 622
    :goto_1d
    return-void

    .line 598
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$6;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public SearchResults()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property, which is initially empty, is set to a list of search results after the program: <ol><li>Calls the <code>SearchTwitter</code> method.</li> <li>Waits for the <code>SearchSuccessful</code> event.</li></ol>\nThe value of the property will then be the same as the parameter to <code>SearchSuccessful</code>.  Note that it is not necessary to call the <code>Authorize</code> method before calling <code>SearchTwitter</code>."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method public SearchSuccessful(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the results of the search requested through <code>SearchSuccessful</code> have been retrieved. A list of the results can then be found in the <code>results</code> parameter or the <code>Results</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1050
    .local p1, "searchResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SearchSuccessful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1051
    return-void
.end method

.method public SearchTwitter(Ljava/lang/String;)V
    .registers 8
    .param p1, "query"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This searches Twitter for the given String query.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1011
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "SearchTwitter"

    const/16 v2, 0x13a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1037
    :goto_1d
    return-void

    .line 1015
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$13;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$13;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public StopFollowing(Ljava/lang/String;)V
    .registers 8
    .param p1, "user"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 898
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "StopFollowing"

    const/16 v2, 0x138

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 912
    :goto_1d
    return-void

    .line 902
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$11;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$11;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public Tweet(Ljava/lang/String;)V
    .registers 8
    .param p1, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This sends a tweet as the logged-in user with the specified Text, which will be trimmed if it exceeds 160 characters. <p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 504
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Tweet"

    const/16 v2, 0x132

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 524
    :goto_1d
    return-void

    .line 514
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$4;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This sends a tweet as the logged-in user with the specified Text and a path to the image to be uploaded, which will be trimmed if it exceeds 160 characters. If an image is not found or invalid, only the text will be tweeted.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 543
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "TweetWithImage"

    const/16 v2, 0x132

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Need to login?"

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 573
    :goto_1d
    return-void

    .line 548
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Twitter$5;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method public TwitPic_API_Key()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;

    return-object v0
.end method

.method public TwitPic_API_Key(Ljava/lang/String;)V
    .registers 2
    .param p1, "TwitPic_API_Key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The API Key for image uploading, provided by TwitPic."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public Username()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The user name of the authorized user. Empty if there is no authorized user."
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 385
    const-string v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz p3, :cond_95

    .line 387
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 388
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_8a

    .line 389
    const-string v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "oauth_verifier"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "oauthVerifier":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v2, :cond_66

    .line 392
    const-string v2, "Twitter"

    const-string v3, "twitter field is unexpectedly null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Authorize"

    const/16 v4, 0x130

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "internal error: can\'t access Twitter library"

    aput-object v6, v5, v7

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 396
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 398
    :cond_66
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    if-eqz v2, :cond_7b

    if-eqz v0, :cond_7b

    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7b

    .line 400
    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$3;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Twitter$3;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 438
    .end local v0    # "oauthVerifier":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_7a
    return-void

    .line 426
    .restart local v0    # "oauthVerifier":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_7b
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Authorize"

    const/16 v4, 0x131

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    goto :goto_7a

    .line 431
    .end local v0    # "oauthVerifier":Ljava/lang/String;
    :cond_8a
    const-string v2, "Twitter"

    const-string v3, "uri returned from WebView activity was unexpectedly null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    goto :goto_7a

    .line 435
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_95
    const-string v2, "Twitter"

    const-string v3, "intent returned from WebView activity was unexpectedly null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    goto :goto_7a
.end method
