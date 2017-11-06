.class Lcom/ts/set/SettingEquipmentActivity$1;
.super Ljava/lang/Object;
.source "SettingEquipmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingEquipmentActivity;->initSetEquipmentOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingEquipmentActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingEquipmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingEquipmentActivity$1;->this$0:Lcom/ts/set/SettingEquipmentActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ts/set/SettingEquipmentActivity$1;->this$0:Lcom/ts/set/SettingEquipmentActivity;

    invoke-virtual {v0}, Lcom/ts/set/SettingEquipmentActivity;->finish()V

    .line 104
    return-void
.end method
