.class public Lcom/broadfly/settings/SettingsService;
.super Landroid/app/Service;
.source "SettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadfly/settings/SettingsService$ISettings;
    }
.end annotation


# instance fields
.field private mISettings:Lcom/broadfly/settings/SettingsService$ISettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lcom/broadfly/settings/SettingsService$ISettings;

    invoke-direct {v0, p0}, Lcom/broadfly/settings/SettingsService$ISettings;-><init>(Lcom/broadfly/settings/SettingsService;)V

    iput-object v0, p0, Lcom/broadfly/settings/SettingsService;->mISettings:Lcom/broadfly/settings/SettingsService$ISettings;

    .line 13
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 70
    const-string v0, " ISet"

    const-string v1, "ISettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/broadfly/settings/SettingsService;->mISettings:Lcom/broadfly/settings/SettingsService$ISettings;

    return-object v0
.end method
