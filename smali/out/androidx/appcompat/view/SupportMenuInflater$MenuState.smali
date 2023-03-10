.class Landroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroidx/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroidx/appcompat/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 4
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 348
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 337
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 349
    iput-object p2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 351
    invoke-virtual {p0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 352
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .registers 3
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 457
    if-nez p1, :cond_4

    .line 460
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 548
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v3, v3, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 549
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 550
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 551
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v3

    .line 555
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_18
    return-object v3

    .line 552
    :catch_19
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SupportMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 465
    iget-boolean v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 466
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 467
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    if-lt v3, v4, :cond_46

    move v3, v4

    .line 468
    :goto_18
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 469
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 470
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 472
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_30

    .line 473
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 476
    :cond_30
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_58

    .line 477
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v3, v3, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 478
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    :cond_46
    const/4 v3, 0x0

    goto :goto_18

    .line 481
    :cond_48
    new-instance v3, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 482
    invoke-virtual {v5}, Landroidx/appcompat/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 485
    :cond_58
    instance-of v3, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_c6

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v2, v3

    .line 486
    .local v2, "impl":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_60
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_6f

    .line 487
    instance-of v3, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_c8

    move-object v3, p1

    .line 488
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 494
    :cond_6f
    :goto_6f
    const/4 v1, 0x0

    .line 495
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_86

    .line 496
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v4, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v3, v4, v5}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 498
    .local v0, "actionView":Landroid/view/View;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 499
    const/4 v1, 0x1

    .line 501
    .end local v0    # "actionView":Landroid/view/View;
    :cond_86
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_92

    .line 502
    if-nez v1, :cond_d3

    .line 503
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 504
    const/4 v1, 0x1

    .line 510
    :cond_92
    :goto_92
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v3, :cond_9b

    .line 511
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    invoke-static {p1, v3}, Landroidx/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;

    .line 514
    :cond_9b
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Landroidx/core/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 515
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Landroidx/core/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-char v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {p1, v3, v4}, Landroidx/core/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 518
    iget-char v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    iget v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {p1, v3, v4}, Landroidx/core/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 520
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_bc

    .line 521
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v3}, Landroidx/core/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 523
    :cond_bc
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_c5

    .line 524
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v3}, Landroidx/core/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 526
    :cond_c5
    return-void

    .line 485
    .end local v1    # "actionViewSpecified":Z
    .end local v2    # "impl":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_c6
    const/4 v2, 0x0

    goto :goto_60

    .line 489
    .restart local v2    # "impl":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_c8
    instance-of v3, p1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    if-eqz v3, :cond_6f

    move-object v3, p1

    .line 490
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto :goto_6f

    .line 506
    .restart local v1    # "actionViewSpecified":Z
    :cond_d3
    const-string v3, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92
.end method


# virtual methods
.method public addItem()V
    .registers 6

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 530
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 531
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .registers 7

    .prologue
    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 535
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 536
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 537
    return-object v0
.end method

.method public hasAddedItem()Z
    .registers 2

    .prologue
    .line 541
    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, v1, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 369
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 370
    sget v1, Landroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 372
    sget v1, Landroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 373
    sget v1, Landroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 375
    sget v1, Landroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 376
    sget v1, Landroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 385
    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v4, v4, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v7, Landroidx/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 388
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_id:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 389
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v7, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 390
    .local v1, "category":I
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v7, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 391
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 393
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 394
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 395
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 396
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 397
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 398
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    .line 399
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 400
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 401
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 402
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    .line 403
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 404
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_127

    .line 406
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_124

    move v4, v5

    :goto_83
    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 412
    :goto_85
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 413
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v7, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 414
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v7, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 415
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 416
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 417
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 418
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 419
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 421
    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_12d

    move v2, v5

    .line 422
    .local v2, "hasActionProvider":Z
    :goto_ce
    if-eqz v2, :cond_12f

    iget v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_12f

    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_12f

    .line 423
    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v5, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v7, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v7, v7, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v4, v5, v7}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/view/ActionProvider;

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 434
    :goto_e8
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 435
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 436
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 437
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 444
    :goto_10e
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 445
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 451
    :goto_11e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    iput-boolean v6, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 454
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_124
    move v4, v6

    .line 406
    goto/16 :goto_83

    .line 410
    :cond_127
    iget v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto/16 :goto_85

    :cond_12d
    move v2, v6

    .line 421
    goto :goto_ce

    .line 427
    .restart local v2    # "hasActionProvider":Z
    :cond_12f
    if-eqz v2, :cond_138

    .line 428
    const-string v4, "SupportMenuInflater"

    const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_138
    iput-object v8, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    goto :goto_e8

    .line 442
    :cond_13b
    iput-object v8, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_10e

    .line 448
    :cond_13e
    iput-object v8, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_11e
.end method

.method public resetGroup()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 356
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 357
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 358
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 359
    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 360
    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 361
    return-void
.end method
