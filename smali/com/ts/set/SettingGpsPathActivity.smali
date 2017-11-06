.class public Lcom/ts/set/SettingGpsPathActivity;
.super Landroid/app/Activity;
.source "SettingGpsPathActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/SettingGpsPathActivity$PInfo;
    }
.end annotation


# static fields
.field public static final ACTION_RECOGNIZE_CMD_B:Ljava/lang/String; = "com.globalconstant.BROADCAST_CAR_SEND_CMD"


# instance fields
.field apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/set/SettingGpsPathActivity$PInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_dialgo:Landroid/app/AlertDialog;

.field naviPacketName:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/set/SettingGpsPathActivity;->naviPacketName:[B

    .line 29
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
            "Lcom/ts/set/SettingGpsPathActivity$PInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/set/SettingGpsPathActivity$PInfo;>;"
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 134
    return-object v4

    .line 120
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 121
    .local v2, "p":Landroid/content/pm/PackageInfo;
    if-nez p1, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    invoke-direct {v1, p0}, Lcom/ts/set/SettingGpsPathActivity$PInfo;-><init>(Lcom/ts/set/SettingGpsPathActivity;)V

    .line 126
    .local v1, "newInfo":Lcom/ts/set/SettingGpsPathActivity$PInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 127
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {v1, v5}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$4(Lcom/ts/set/SettingGpsPathActivity$PInfo;Ljava/lang/String;)V

    .line 128
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$5(Lcom/ts/set/SettingGpsPathActivity$PInfo;Ljava/lang/String;)V

    .line 129
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$6(Lcom/ts/set/SettingGpsPathActivity$PInfo;Ljava/lang/String;)V

    .line 130
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1, v5}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$7(Lcom/ts/set/SettingGpsPathActivity$PInfo;I)V

    .line 131
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$8(Lcom/ts/set/SettingGpsPathActivity$PInfo;Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private listPackages()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-direct {p0, v6}, Lcom/ts/set/SettingGpsPathActivity;->getInstalledApps(Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    .line 92
    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 93
    .local v2, "max":I
    const/4 v3, 0x0

    .line 94
    .local v3, "nHave":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 107
    if-nez v3, :cond_0

    .line 109
    const-string v4, "No NaviApp"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 112
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->pname:Ljava/lang/String;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$0(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ts/main/common/MainSet;->IsAvalidPackName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->appname:Ljava/lang/String;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$1(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ts/main/common/MainSet;->IsAvalidAPPName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # invokes: Lcom/ts/set/SettingGpsPathActivity$PInfo;->prettyPrint()V
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$2(Lcom/ts/set/SettingGpsPathActivity$PInfo;)V

    .line 99
    new-instance v0, Lcom/ts/set/setview/SetMainGpsItem;

    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->appname:Ljava/lang/String;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$1(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/ts/set/setview/SetMainGpsItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    .local v0, "Myitem":Lcom/ts/set/setview/SetMainGpsItem;
    invoke-virtual {v0, v1, p0}, Lcom/ts/set/setview/SetMainGpsItem;->SetUserCallback(ILandroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0}, Lcom/ts/set/setview/SetMainGpsItem;->GetImageTile()Landroid/widget/ImageView;

    move-result-object v5

    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$3(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v0}, Lcom/ts/set/setview/SetMainGpsItem;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/ts/set/setview/UISetSroView;->AddView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 94
    .end local v0    # "Myitem":Lcom/ts/set/setview/SetMainGpsItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method IsSysapk(Ljava/lang/String;)I
    .locals 4
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "appFlags":I
    :try_start_0
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    and-int/lit8 v2, v0, 0x1

    return v2

    .line 63
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method StrToByte128(Ljava/lang/String;)[B
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 143
    const/16 v3, 0x80

    new-array v2, v3, [B

    .line 144
    .local v2, "naviname2":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 145
    .local v1, "naviname":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 149
    return-object v2

    .line 147
    :cond_0
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initGpsPath()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ts/set/SettingGpsPathActivity;->listPackages()V

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 156
    .local v3, "n":I
    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->appname:Ljava/lang/String;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$1(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ts/set/SettingGpsPathActivity;->StrToByte128(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/yyw/ts70xhw/StSet;->SetNaviName([B)I

    .line 157
    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->pname:Ljava/lang/String;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$0(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ts/set/SettingGpsPathActivity;->StrToByte128(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/yyw/ts70xhw/StSet;->SetNaviPack([B)I

    .line 158
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->SetSave()I

    .line 163
    const/16 v4, 0x80

    new-array v2, v4, [B

    .line 164
    .local v2, "byteNavipath":[B
    invoke-static {v2}, Lcom/yyw/ts70xhw/StSet;->GetNaviPack([B)I

    .line 165
    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "NaviPath":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "Aintent":Landroid/content/Intent;
    const-string v4, "com.globalconstant.BROADCAST_CAR_SEND_CMD"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v4, "domain"

    const-string v5, "navigation"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v4, "action"

    const-string v5, "sendNaviAppPck"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v4, "naviAppPck"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/ts/set/SettingGpsPathActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ts/main/txz/TxzReg;->SetNaviType(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 177
    const-string v4, "xxxx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addToWhiteList4GIS true    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "                    "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->apps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ts/set/SettingGpsPathActivity$PInfo;

    # getter for: Lcom/ts/set/SettingGpsPathActivity$PInfo;->appname:Ljava/lang/String;
    invoke-static {v4}, Lcom/ts/set/SettingGpsPathActivity$PInfo;->access$1(Lcom/ts/set/SettingGpsPathActivity$PInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 180
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/ts/MainUI/R$string;->set_navi_path_reboot:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ts/set/SettingGpsPathActivity$1;

    invoke-direct {v6, p0}, Lcom/ts/set/SettingGpsPathActivity$1;-><init>(Lcom/ts/set/SettingGpsPathActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    .line 178
    iput-object v4, p0, Lcom/ts/set/SettingGpsPathActivity;->m_dialgo:Landroid/app/AlertDialog;

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->initGpsPath()V

    .line 39
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/ts/set/SettingGpsPathActivity;->finish()V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    return-void
.end method
