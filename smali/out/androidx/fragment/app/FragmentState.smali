.class final Landroidx/fragment/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Landroidx/fragment/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mIndex:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    :goto_4a
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 68
    return-void

    :cond_53
    move v0, v2

    .line 59
    goto :goto_18

    :cond_55
    move v0, v2

    .line 63
    goto :goto_33

    :cond_57
    move v0, v2

    .line 64
    goto :goto_3c

    :cond_59
    move v1, v2

    .line 66
    goto :goto_4a
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "frag"    # Landroidx/fragment/app/Fragment;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 45
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mIndex:I

    .line 46
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 47
    iget v0, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 48
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 51
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    .line 52
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 53
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerNonConfig;Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/Fragment;
    .registers 10
    .param p1, "host"    # Landroidx/fragment/app/FragmentHostCallback;
    .param p2, "container"    # Landroidx/fragment/app/FragmentContainer;
    .param p3, "parent"    # Landroidx/fragment/app/Fragment;
    .param p4, "childNonConfig"    # Landroidx/fragment/app/FragmentManagerNonConfig;
    .param p5, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    .prologue
    .line 73
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_8e

    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_15

    .line 76
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 79
    :cond_15
    if-eqz p2, :cond_99

    .line 80
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroidx/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 85
    :goto_21
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_34

    .line 86
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 87
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 89
    :cond_34
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget v2, p0, Landroidx/fragment/app/FragmentState;->mIndex:I

    invoke-virtual {v1, v2, p3}, Landroidx/fragment/app/Fragment;->setIndex(ILandroidx/fragment/app/Fragment;)V

    .line 90
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 91
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 92
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget v2, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    iput v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 93
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget v2, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    iput v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 94
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 96
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 97
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 98
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iget-object v2, p1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 100
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_8e

    .line 101
    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiated fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "context":Landroid/content/Context;
    :cond_8e
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iput-object p4, v1, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 105
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    iput-object p5, v1, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 106
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    return-object v1

    .line 82
    .restart local v0    # "context":Landroid/content/Context;
    :cond_99
    iget-object v1, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    goto/16 :goto_21
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Landroidx/fragment/app/FragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    if-eqz v0, :cond_45

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    if-eqz v0, :cond_47

    move v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mDetached:Z

    if-eqz v0, :cond_49

    move v0, v1

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentState;->mHidden:Z

    if-eqz v0, :cond_4b

    :goto_3c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void

    :cond_45
    move v0, v2

    .line 118
    goto :goto_11

    :cond_47
    move v0, v2

    .line 122
    goto :goto_28

    :cond_49
    move v0, v2

    .line 123
    goto :goto_30

    :cond_4b
    move v1, v2

    .line 125
    goto :goto_3c
.end method
