.class Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
.super Ljava/lang/Object;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;

.field final packgeName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/settings/SmsDefaultDialog$AppListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmsDefaultDialog$AppListAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->this$1:Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->label:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 213
    iput-object p4, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    .line 214
    return-void
.end method
