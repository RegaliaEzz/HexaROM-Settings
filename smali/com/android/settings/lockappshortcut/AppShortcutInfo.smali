.class Lcom/android/settings/lockappshortcut/AppShortcutInfo;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;,
        Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    }
.end annotation


# direct methods
.method public static getApplicationInfo(Landroid/content/Context;ILcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "appInfo"    # Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_application_shortcut"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "appShortcut_Info":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v10, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 67
    :cond_0
    const/4 p2, 0x0

    .line 106
    .end local p2    # "appInfo":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    :cond_1
    :goto_0
    return-object p2

    .line 69
    .restart local p2    # "appInfo":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    :cond_2
    const-string v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, "shorcutInfo":[Ljava/lang/String;
    aget-object v2, v9, p1

    .line 73
    .local v2, "db":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 74
    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    .line 76
    :cond_4
    const/16 v10, 0x2f

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 77
    .local v7, "package_index":I
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "package_name":Ljava/lang/String;
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "activity_name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 81
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 83
    .local v6, "isdeleted":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x200

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p2, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 86
    invoke-static {p0, v8}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p2, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p2, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_1
    if-nez v6, :cond_1

    .line 95
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p2, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 98
    invoke-static {p0, v8}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p2, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p2, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v4

    .line 102
    .local v4, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AppShortcutInfo"

    const-string v11, "cannot find app name !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    .end local v4    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 89
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AppShortcutInfo"

    const-string v11, "cannot find app name !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v6, 0x1

    goto :goto_1
.end method

.method protected static getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 139
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 142
    :goto_0
    return-object v2

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_application_shortcut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "appShortcut_Info":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "shorcutInfo":[Ljava/lang/String;
    aget-object v2, v1, p1

    goto :goto_0
.end method

.method protected static getShortcutStatus(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_application_shortcut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "appShortcut_Info":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "shorcutInfo":[Ljava/lang/String;
    aget-object v2, v1, p1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_application_shortcut"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "appShortcut_Info":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "shorcutInfo":[Ljava/lang/String;
    aput-object p2, v5, p1

    .line 129
    const-string v0, ""

    .line 131
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v1, v2

    .line 132
    .local v3, "info":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "info":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_application_shortcut"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    return-void
.end method
