.class Lcom/ts/set/SettingSoundActivity$1;
.super Ljava/lang/Object;
.source "SettingSoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingSoundActivity;->InitUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingSoundActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingSoundActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingSoundActivity$1;->this$0:Lcom/ts/set/SettingSoundActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ts/set/SettingSoundActivity$1;->this$0:Lcom/ts/set/SettingSoundActivity;

    invoke-virtual {v0}, Lcom/ts/set/SettingSoundActivity;->finish()V

    .line 226
    return-void
.end method
