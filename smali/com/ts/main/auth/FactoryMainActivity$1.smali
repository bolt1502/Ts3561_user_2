.class Lcom/ts/main/auth/FactoryMainActivity$1;
.super Ljava/lang/Object;
.source "FactoryMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/FactoryMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/FactoryMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/FactoryMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/FactoryMainActivity$1;->this$0:Lcom/ts/main/auth/FactoryMainActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-static {}, Lcom/ts/main/auth/factory_test;->getTickCount()J

    move-result-wide v0

    sput-wide v0, Lcom/ts/main/auth/factory_test;->TotalTime:J

    .line 177
    iget-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity$1;->this$0:Lcom/ts/main/auth/FactoryMainActivity;

    const-class v1, Lcom/ts/main/auth/FactorytestarmActivity;

    invoke-virtual {v0, v1}, Lcom/ts/main/auth/FactoryMainActivity;->enterSubWin(Ljava/lang/Class;)V

    .line 178
    invoke-static {}, Lcom/ts/main/auth/factory_test;->Clear()V

    .line 180
    return-void
.end method
