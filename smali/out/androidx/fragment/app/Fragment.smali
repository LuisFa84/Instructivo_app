.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$AnimationInfo;,
        Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mMenuVisible:Z

.field mParentFragment:Landroidx/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mViewModelStore:Landroidx/lifecycle/ViewModelStore;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 108
    iput v1, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    .line 120
    iput v1, p0, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    .line 199
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 218
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 247
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 254
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 411
    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;
    .registers 2

    .prologue
    .line 2747
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_b

    .line 2748
    new-instance v0, Landroidx/fragment/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 2750
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 437
    :try_start_0
    sget-object v3, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 438
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_17

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 441
    sget-object v3, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_17
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 444
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz p2, :cond_37

    .line 445
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 446
    invoke-virtual {v2, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_37} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_37} :catch_84
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_37} :catch_aa
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_37} :catch_ca

    .line 448
    :cond_37
    return-object v2

    .line 449
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :catch_38
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 453
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5e
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 457
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_84
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 461
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_aa
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": could not find Fragment constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 464
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_ca
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": calling Fragment constructor caused an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 480
    :try_start_0
    sget-object v2, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 481
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_17

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 484
    sget-object v2, Landroidx/fragment/app/Fragment;->sClassMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_17
    const-class v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result v2

    .line 488
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1d
    return v2

    .line 487
    :catch_1e
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_1d
.end method


# virtual methods
.method callStartTransitionListener()V
    .registers 4

    .prologue
    .line 2272
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v1, :cond_b

    .line 2273
    const/4 v0, 0x0

    .line 2279
    .local v0, "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    :goto_5
    if-eqz v0, :cond_a

    .line 2280
    invoke-interface {v0}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 2282
    :cond_a
    return-void

    .line 2275
    .end local v0    # "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2276
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2277
    .restart local v0    # "listener":Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    goto :goto_5
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 2294
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2295
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2300
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2301
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2303
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2304
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2305
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2306
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2307
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2308
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2309
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2310
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2311
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2312
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2313
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2314
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_dc

    .line 2315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2316
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    :cond_dc
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_ed

    .line 2319
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2322
    :cond_ed
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_fe

    .line 2323
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2326
    :cond_fe
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_10f

    .line 2327
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2329
    :cond_10f
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_120

    .line 2330
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2333
    :cond_120
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_131

    .line 2334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    :cond_131
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_14c

    .line 2338
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2339
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2342
    :cond_14c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_161

    .line 2343
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2345
    :cond_161
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_172

    .line 2346
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2348
    :cond_172
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_183

    .line 2349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2351
    :cond_183
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_194

    .line 2352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2354
    :cond_194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 2355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2356
    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2362
    :cond_1b8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c5

    .line 2363
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2365
    :cond_1c5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_202

    .line 2366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2369
    :cond_202
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 525
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 2372
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2378
    .end local p0    # "this":Landroidx/fragment/app/Fragment;
    :goto_8
    return-object p0

    .line 2375
    .restart local p0    # "this":Landroidx/fragment/app/Fragment;
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_14

    .line 2376
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_8

    .line 2378
    :cond_14
    const/4 p0, 0x0

    goto :goto_8
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_5
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .prologue
    .line 2178
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 2179
    :goto_b
    return v0

    .line 2178
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .prologue
    .line 2203
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 2204
    :goto_b
    return v0

    .line 2203
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 2

    .prologue
    .line 2805
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2806
    const/4 v0, 0x0

    .line 2808
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    goto :goto_5
.end method

.method getAnimator()Landroid/animation/Animator;
    .registers 2

    .prologue
    .line 2820
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2821
    const/4 v0, 0x0

    .line 2823
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    goto :goto_5
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_11

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->instantiateChildFragmentManager()V

    .line 846
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    .line 847
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 856
    :cond_11
    :goto_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0

    .line 848
    :cond_14
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1f

    .line 849
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_11

    .line 850
    :cond_1f
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2a

    .line 851
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_11

    .line 852
    :cond_2a
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    .line 853
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_11
.end method

.method public getContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_5
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1961
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 1962
    const/4 v0, 0x0

    .line 1964
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    goto :goto_5
.end method

.method getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .registers 2

    .prologue
    .line 2791
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2792
    const/4 v0, 0x0

    .line 2794
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    goto :goto_5
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2040
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2041
    const/4 v0, 0x0

    .line 2043
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    goto :goto_5
.end method

.method getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .registers 2

    .prologue
    .line 2798
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2799
    const/4 v0, 0x0

    .line 2801
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    goto :goto_5
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public final getId()I
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 1292
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_a

    .line 1293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1295
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    goto :goto_9
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 5
    .param p1, "savedFragmentState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1326
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_c

    .line 1327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1330
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1331
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 1332
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1333
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getLoaderManager()Landroidx/loader/app/LoaderManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1065
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method getNextAnim()I
    .registers 2

    .prologue
    .line 2754
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2755
    const/4 v0, 0x0

    .line 2757
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    goto :goto_5
.end method

.method getNextTransition()I
    .registers 2

    .prologue
    .line 2768
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2769
    const/4 v0, 0x0

    .line 2771
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    goto :goto_5
.end method

.method getNextTransitionStyle()I
    .registers 2

    .prologue
    .line 2784
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2785
    const/4 v0, 0x0

    .line 2787
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    goto :goto_5
.end method

.method public final getParentFragment()Landroidx/fragment/app/Fragment;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2078
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2079
    const/4 v0, 0x0

    .line 2081
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    goto :goto_5
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    .prologue
    .line 982
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2000
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2001
    const/4 v0, 0x0

    .line 2003
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    goto :goto_5
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2111
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2112
    const/4 v0, 0x0

    .line 2114
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    goto :goto_5
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2149
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2150
    const/4 v0, 0x0

    .line 2153
    :goto_5
    return-object v0

    .line 2152
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    .line 2153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    goto :goto_5
.end method

.method getStateAfterAnimating()I
    .registers 2

    .prologue
    .line 2827
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2828
    const/4 v0, 0x0

    .line 2830
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    goto :goto_5
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/Fragment;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    .prologue
    .line 673
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 771
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .registers 2

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1577
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_c

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_19

    .line 331
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 333
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 945
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 532
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1743
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    .line 1744
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 1745
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1746
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1747
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 1748
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 1749
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 1750
    iput v1, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 1751
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1752
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1753
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1754
    iput v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 1755
    iput v1, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1756
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 1757
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1758
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1759
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mRetaining:Z

    .line 1760
    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    .prologue
    .line 2382
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_c

    .line 2383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2385
    :cond_c
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2386
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    new-instance v2, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentManagerImpl;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    .line 2406
    return-void
.end method

.method public final isAdded()Z
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isDetached()Z
    .registers 2

    .prologue
    .line 890
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .registers 2

    .prologue
    .line 939
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .registers 2

    .prologue
    .line 2845
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2846
    const/4 v0, 0x0

    .line 2848
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    goto :goto_5
.end method

.method final isInBackStack()Z
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isInLayout()Z
    .registers 2

    .prologue
    .line 910
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 951
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    return v0
.end method

.method isPostponed()Z
    .registers 2

    .prologue
    .line 2838
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2839
    const/4 v0, 0x0

    .line 2841
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    goto :goto_5
.end method

.method public final isRemoving()Z
    .registers 2

    .prologue
    .line 899
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .registers 3

    .prologue
    .line 918
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final isStateSaved()Z
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_6

    .line 605
    const/4 v0, 0x0

    .line 607
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    goto :goto_5
.end method

.method public final isVisible()Z
    .registers 2

    .prologue
    .line 927
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method noteStateNotSaved()V
    .registers 2

    .prologue
    .line 2514
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2515
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2517
    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1596
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1135
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1435
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1436
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1418
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1419
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_11

    const/4 v0, 0x0

    .line 1420
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_8
    if-eqz v0, :cond_10

    .line 1421
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1422
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1424
    :cond_10
    return-void

    .line 1419
    .end local v0    # "hostActivity":Landroid/app/Activity;
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_8
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .param p1, "childFragment"    # Landroidx/fragment/app/Fragment;

    .prologue
    .line 1410
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1679
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1680
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1496
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1497
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1498
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1499
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1500
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1502
    :cond_17
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 5
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 1454
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 1474
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1865
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1866
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1785
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1553
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1728
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1729
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1730
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1731
    .local v1, "isChangingConfigurations":Z
    :goto_f
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v2, :cond_1a

    if-nez v1, :cond_1a

    .line 1732
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 1734
    :cond_1a
    return-void

    .line 1730
    .end local v1    # "isChangingConfigurations":Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    .prologue
    .line 1812
    return-void
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1719
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1720
    return-void
.end method

.method public onDetach()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1768
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1769
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1277
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .registers 2
    .param p1, "hidden"    # Z

    .prologue
    .line 961
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1398
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1380
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1381
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_11

    const/4 v0, 0x0

    .line 1382
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_8
    if-eqz v0, :cond_10

    .line 1383
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1384
    invoke-virtual {p0, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1386
    :cond_10
    return-void

    .line 1381
    .end local v0    # "hostActivity":Landroid/app/Activity;
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_8
.end method

.method public onLowMemory()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1705
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1706
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 1665
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1833
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1844
    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1690
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 1674
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1802
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1237
    return-void
.end method

.method public onResume()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1633
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1655
    return-void
.end method

.method public onStart()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1622
    return-void
.end method

.method public onStop()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1700
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1567
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1612
    return-void
.end method

.method peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2455
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2456
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2458
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2459
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2460
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2461
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_35

    .line 2462
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2465
    :cond_35
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_3e

    .line 2466
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2468
    :cond_3e
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2534
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2535
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2536
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2538
    :cond_c
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2601
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_18

    .line 2602
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2611
    :cond_b
    :goto_b
    return v0

    .line 2605
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_18

    .line 2606
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2611
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 2409
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_a

    .line 2410
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2412
    :cond_a
    iput v1, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2414
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2415
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2416
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_37

    .line 2417
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :cond_37
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2421
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2557
    const/4 v0, 0x0

    .line 2558
    .local v0, "show":Z
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1c

    .line 2559
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_11

    .line 2560
    const/4 v0, 0x1

    .line 2561
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2563
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1c

    .line 2564
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2567
    :cond_1c
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 2425
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_a

    .line 2426
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2428
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2429
    new-instance v0, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2438
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2439
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2440
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 2442
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 2444
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2452
    :goto_2c
    return-void

    .line 2446
    :cond_2d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_39

    .line 2447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2450
    :cond_39
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    goto :goto_2c
.end method

.method performDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2692
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2693
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_11

    .line 2694
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2696
    :cond_11
    iput v2, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2697
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2698
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2699
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2700
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_3d

    .line 2701
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2704
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2705
    return-void
.end method

.method performDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2670
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 2671
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2673
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_15

    .line 2674
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2676
    :cond_15
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2677
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2678
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2679
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_40

    .line 2680
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2687
    :cond_40
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManager;->markForRedelivery()V

    .line 2688
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2689
    return-void
.end method

.method performDetach()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2708
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2709
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2710
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2711
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2c

    .line 2712
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2719
    :cond_2c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_60

    .line 2720
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_59

    .line 2721
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2724
    :cond_59
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2725
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2727
    :cond_60
    return-void
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1309
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1310
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method performLowMemory()V
    .registers 2

    .prologue
    .line 2541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2542
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2543
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2545
    :cond_c
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2520
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2521
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2522
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2524
    :cond_c
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2585
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_20

    .line 2586
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_14

    .line 2587
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2597
    :cond_13
    :goto_13
    return v0

    .line 2591
    :cond_14
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_20

    .line 2592
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2597
    :cond_20
    const/4 v0, 0x0

    goto :goto_13
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2615
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_18

    .line 2616
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_f

    .line 2617
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2619
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_18

    .line 2620
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2623
    :cond_18
    return-void
.end method

.method performPause()V
    .registers 4

    .prologue
    .line 2636
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2637
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2639
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2640
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1b

    .line 2641
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPause()V

    .line 2643
    :cond_1b
    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2644
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2645
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2646
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_47

    .line 2647
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2650
    :cond_47
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 2527
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2528
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2529
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2531
    :cond_c
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2571
    const/4 v0, 0x0

    .line 2572
    .local v0, "show":Z
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1c

    .line 2573
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_11

    .line 2574
    const/4 v0, 0x1

    .line 2575
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2577
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1c

    .line 2578
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2581
    :cond_1c
    return v0
.end method

.method performResume()V
    .registers 4

    .prologue
    .line 2492
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2493
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2494
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2496
    :cond_e
    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2497
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2499
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_3a

    .line 2500
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2503
    :cond_3a
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_48

    .line 2504
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 2505
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2507
    :cond_48
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2508
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_5a

    .line 2509
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2511
    :cond_5a
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2626
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2627
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 2628
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2629
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_14

    .line 2630
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2633
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_14
    return-void
.end method

.method performStart()V
    .registers 4

    .prologue
    .line 2471
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2472
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2473
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2475
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2476
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2478
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_3a

    .line 2479
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2482
    :cond_3a
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_43

    .line 2483
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    .line 2485
    :cond_43
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2486
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_55

    .line 2487
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2489
    :cond_55
    return-void
.end method

.method performStop()V
    .registers 4

    .prologue
    .line 2653
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2656
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2657
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1b

    .line 2658
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStop()V

    .line 2660
    :cond_1b
    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2661
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2662
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2663
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_47

    .line 2664
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2667
    :cond_47
    return-void
.end method

.method public postponeEnterTransition()V
    .registers 3

    .prologue
    .line 2238
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2239
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1879
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1880
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 1211
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_23

    .line 1212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_23
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1215
    return-void
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 723
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-nez v0, :cond_25

    .line 724
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to an activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :cond_25
    return-object v0
.end method

.method public final requireContext()Landroid/content/Context;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 695
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_25

    .line 696
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to a context."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_25
    return-object v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 831
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    if-nez v0, :cond_25

    .line 832
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not associated with a fragment manager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :cond_25
    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 748
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    .line 749
    .local v0, "host":Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 750
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to a host."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :cond_25
    return-object v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1517
    if-eqz p1, :cond_20

    .line 1518
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1520
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_20

    .line 1521
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v1, :cond_11

    .line 1522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->instantiateChildFragmentManager()V

    .line 1524
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 1525
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 1526
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1529
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_20
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 493
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 494
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 497
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 498
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 499
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v0, :cond_37

    .line 500
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_37
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_42

    .line 504
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 506
    :cond_42
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 4
    .param p1, "allow"    # Z

    .prologue
    .line 2166
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2167
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 4
    .param p1, "allow"    # Z

    .prologue
    .line 2191
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2192
    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2812
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    .line 2813
    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 2816
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    .line 2817
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 580
    iget v0, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_12
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 584
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .registers 3
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .prologue
    .line 1922
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    .line 1923
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1947
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 1948
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .registers 3
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .prologue
    .line 1933
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    .line 1934
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2023
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2024
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3
    .param p1, "hasMenu"    # Z

    .prologue
    .line 993
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_17

    .line 994
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 995
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    .line 996
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 999
    :cond_17
    return-void
.end method

.method setHideReplaced(Z)V
    .registers 3
    .param p1, "replaced"    # Z

    .prologue
    .line 2852
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 2853
    return-void
.end method

.method final setIndex(ILandroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "parent"    # Landroidx/fragment/app/Fragment;

    .prologue
    .line 509
    iput p1, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    .line 510
    if-eqz p2, :cond_22

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 515
    :goto_21
    return-void

    .line 513
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_21
.end method

.method public setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V
    .registers 4
    .param p1, "state"    # Landroidx/fragment/app/Fragment$SavedState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 619
    iget v0, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_c

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_c
    if-eqz p1, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_14
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 624
    return-void

    .line 622
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setMenuVisibility(Z)V
    .registers 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 1011
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1b

    .line 1012
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 1013
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1014
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1017
    :cond_1b
    return-void
.end method

.method setNextAnim(I)V
    .registers 3
    .param p1, "animResourceId"    # I

    .prologue
    .line 2761
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 2765
    :goto_6
    return-void

    .line 2764
    :cond_7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    goto :goto_6
.end method

.method setNextTransition(II)V
    .registers 4
    .param p1, "nextTransition"    # I
    .param p2, "nextTransitionStyle"    # I

    .prologue
    .line 2775
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 2781
    :goto_8
    return-void

    .line 2778
    :cond_9
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 2779
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2780
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput p2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    goto :goto_8
.end method

.method setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5
    .param p1, "listener"    # Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .prologue
    .line 2730
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 2731
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_a

    .line 2744
    :cond_9
    :goto_9
    return-void

    .line 2734
    :cond_a
    if-eqz p1, :cond_2b

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-eqz v0, :cond_2b

    .line 2735
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2738
    :cond_2b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_35

    .line 2739
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2741
    :cond_35
    if-eqz p1, :cond_9

    .line 2742
    invoke-interface {p1}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    goto :goto_9
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2062
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2063
    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 2
    .param p1, "retain"    # Z

    .prologue
    .line 978
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 979
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1983
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 1984
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2097
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2098
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2132
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2133
    return-void
.end method

.method setStateAfterAnimating(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 2834
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 2835
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .registers 9
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 644
    .local v1, "mine":Landroidx/fragment/app/FragmentManager;
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 645
    .local v2, "theirs":Landroidx/fragment/app/FragmentManager;
    :goto_a
    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    if-eq v1, v2, :cond_31

    .line 646
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 644
    .end local v2    # "theirs":Landroidx/fragment/app/FragmentManager;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_a

    .line 651
    .restart local v2    # "theirs":Landroidx/fragment/app/FragmentManager;
    :cond_31
    move-object v0, p1

    .local v0, "check":Landroidx/fragment/app/Fragment;
    :goto_32
    if-eqz v0, :cond_64

    .line 652
    if-ne v0, p0, :cond_5f

    .line 653
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as the target of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would create a target cycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 651
    :cond_5f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_32

    .line 657
    :cond_64
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 658
    iput p2, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 659
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    const/4 v1, 0x3

    .line 1036
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1e

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1e

    .line 1037
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-eqz v0, :cond_1e

    .line 1038
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1040
    :cond_1e
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1041
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_34

    if-nez p1, :cond_34

    const/4 v0, 0x1

    :goto_27
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1042
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_33

    .line 1045
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1047
    :cond_33
    return-void

    .line 1041
    :cond_34
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1260
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_b

    .line 1261
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1263
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1073
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1074
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1081
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_23

    .line 1082
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_23
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1085
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1093
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1100
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_23

    .line 1101
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_23
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1104
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_23

    .line 1114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_23
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1118
    return-void
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    .prologue
    .line 2252
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_12

    .line 2253
    :cond_a
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2264
    :goto_11
    return-void

    .line 2254
    :cond_12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_35

    .line 2255
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 2262
    :cond_35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->callStartTransitionListener()V

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 539
    iget v1, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v1, :cond_18

    .line 540
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget v1, p0, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    :cond_18
    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2a

    .line 544
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget v1, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_2a
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 548
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1890
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1891
    return-void
.end method
