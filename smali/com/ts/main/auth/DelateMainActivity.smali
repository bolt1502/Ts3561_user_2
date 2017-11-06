.class public Lcom/ts/main/auth/DelateMainActivity;
.super Landroid/app/Activity;
.source "DelateMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/auth/DelateMainActivity$PInfo;
    }
.end annotation


# instance fields
.field apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/main/auth/DelateMainActivity$PInfo;",
            ">;"
        }
    .end annotation
.end field

.field nNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/main/auth/DelateMainActivity;->nNum:I

    .line 26
    return-void
.end method

.method private getInstalledApps(Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "getSysPackages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/main/auth/DelateMainActivity$PInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/main/auth/DelateMainActivity$PInfo;>;"
    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 137
    return-object v4

    .line 123
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 124
    .local v2, "p":Landroid/content/pm/PackageInfo;
    if-nez p1, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 121
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Lcom/ts/main/auth/DelateMainActivity$PInfo;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/DelateMainActivity$PInfo;-><init>(Lcom/ts/main/auth/DelateMainActivity;)V

    .line 129
    .local v1, "newInfo":Lcom/ts/main/auth/DelateMainActivity$PInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 130
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {v1, v5}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$4(Lcom/ts/main/auth/DelateMainActivity$PInfo;Ljava/lang/String;)V

    .line 131
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$5(Lcom/ts/main/auth/DelateMainActivity$PInfo;Ljava/lang/String;)V

    .line 132
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$6(Lcom/ts/main/auth/DelateMainActivity$PInfo;Ljava/lang/String;)V

    .line 133
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1, v5}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$7(Lcom/ts/main/auth/DelateMainActivity$PInfo;I)V

    .line 134
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$8(Lcom/ts/main/auth/DelateMainActivity$PInfo;Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private listPackages()V
    .locals 5

    .prologue
    .line 100
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/ts/main/auth/DelateMainActivity;->getInstalledApps(Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    .line 101
    iget-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 102
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 115
    return-void

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/main/auth/DelateMainActivity$PInfo;

    # getter for: Lcom/ts/main/auth/DelateMainActivity$PInfo;->pname:Ljava/lang/String;
    invoke-static {v3}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$0(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ts/main/auth/DelateMainActivity;->IsSysapk(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 106
    iget v3, p0, Lcom/ts/main/auth/DelateMainActivity;->nNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/main/auth/DelateMainActivity;->nNum:I

    .line 107
    iget-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/main/auth/DelateMainActivity$PInfo;

    # invokes: Lcom/ts/main/auth/DelateMainActivity$PInfo;->prettyPrint()V
    invoke-static {v3}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$1(Lcom/ts/main/auth/DelateMainActivity$PInfo;)V

    .line 108
    new-instance v0, Lcom/ts/set/setview/SetMainItem;

    iget-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/main/auth/DelateMainActivity$PInfo;

    # getter for: Lcom/ts/main/auth/DelateMainActivity$PInfo;->appname:Ljava/lang/String;
    invoke-static {v3}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$2(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/ts/set/setview/SetMainItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    .local v0, "Myitem":Lcom/ts/set/setview/SetMainItem;
    invoke-virtual {v0, v1, p0}, Lcom/ts/set/setview/SetMainItem;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v0}, Lcom/ts/set/setview/SetMainItem;->GetImageTile()Landroid/widget/ImageView;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/main/auth/DelateMainActivity$PInfo;

    # getter for: Lcom/ts/main/auth/DelateMainActivity$PInfo;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$3(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v0}, Lcom/ts/set/setview/SetMainItem;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/ts/set/setview/SetSroView;->AddView(Landroid/view/View;)V

    .line 102
    .end local v0    # "Myitem":Lcom/ts/set/setview/SetMainItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method IsSysapk(Ljava/lang/String;)I
    .locals 4
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "appFlags":I
    :try_start_0
    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    and-int/lit8 v2, v0, 0x1

    return v2

    .line 89
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, "n":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/auth/DelateMainActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/main/auth/DelateMainActivity$PInfo;

    # getter for: Lcom/ts/main/auth/DelateMainActivity$PInfo;->pname:Ljava/lang/String;
    invoke-static {v3}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->access$0(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 144
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ts/main/auth/DelateMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->finish()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/ts/set/setview/SetSroView;->Inint(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/ts/main/auth/DelateMainActivity;->listPackages()V

    .line 35
    invoke-static {p0}, Lcom/ts/set/setview/SetSroView;->Show(Landroid/content/Context;)V

    .line 36
    iget v0, p0, Lcom/ts/main/auth/DelateMainActivity;->nNum:I

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->del_common_no_apk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    const-string v1, "OK"

    new-instance v2, Lcom/ts/main/auth/DelateMainActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/DelateMainActivity$1;-><init>(Lcom/ts/main/auth/DelateMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 51
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ts/main/auth/DelateMainActivity;->finish()V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    return-void
.end method
