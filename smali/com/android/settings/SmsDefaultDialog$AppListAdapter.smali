.class Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/SmsDefaultDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmsDefaultDialog;)V
    .locals 4

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    .line 224
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getSelectedIndex()I

    move-result v1

    .line 226
    .local v1, "selected":I
    if-lez v1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 228
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    const/4 v1, 0x0

    .line 231
    .end local v0    # "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    :cond_0
    iput v1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    .line 232
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v6, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v6}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 295
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;>;"
    iget-object v6, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-static {v6}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 299
    .local v0, "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 300
    .local v4, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 301
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 302
    new-instance v6, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v1, v5, v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8, v4}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;-><init>(Lcom/android/settings/SmsDefaultDialog$AppListAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 311
    .end local v0    # "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    return-object v3
.end method

.method private getSelectedIndex()I
    .locals 5

    .prologue
    .line 316
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 318
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "defaultSmsAppPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    iget-object v3, v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    .end local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 321
    .restart local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 246
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 276
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    .line 279
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 252
    .local v3, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v6, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v6}, Lcom/android/settings/SmsDefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 253
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040037

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0d00c8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 255
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v6, v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v6, 0x7f0d00c6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 257
    .local v0, "checkedTextView":Landroid/widget/RadioButton;
    iget v6, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_0

    .line 259
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 263
    :cond_0
    const v6, 0x7f0d00c7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 264
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v6, v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-object v5
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 289
    iget v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
