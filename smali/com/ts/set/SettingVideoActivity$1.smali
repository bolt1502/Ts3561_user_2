.class Lcom/ts/set/SettingVideoActivity$1;
.super Ljava/lang/Object;
.source "SettingVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingVideoActivity;->initVideoOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingVideoActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingVideoActivity$1;->this$0:Lcom/ts/set/SettingVideoActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ts/set/SettingVideoActivity$1;->this$0:Lcom/ts/set/SettingVideoActivity;

    invoke-virtual {v0}, Lcom/ts/set/SettingVideoActivity;->finish()V

    .line 79
    return-void
.end method
