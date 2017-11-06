.class Lcom/ts/main/auth/DelateMainActivity$PInfo;
.super Ljava/lang/Object;
.source "DelateMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/auth/DelateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PInfo"
.end annotation


# instance fields
.field private appname:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private pname:Ljava/lang/String;

.field final synthetic this$0:Lcom/ts/main/auth/DelateMainActivity;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/DelateMainActivity;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->this$0:Lcom/ts/main/auth/DelateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->appname:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->pname:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->versionName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->versionCode:I

    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->pname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/main/auth/DelateMainActivity$PInfo;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/ts/main/auth/DelateMainActivity$PInfo;->prettyPrint()V

    return-void
.end method

.method static synthetic access$2(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/main/auth/DelateMainActivity$PInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ts/main/auth/DelateMainActivity$PInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->appname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/ts/main/auth/DelateMainActivity$PInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->pname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/ts/main/auth/DelateMainActivity$PInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/ts/main/auth/DelateMainActivity$PInfo;I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->versionCode:I

    return-void
.end method

.method static synthetic access$8(Lcom/ts/main/auth/DelateMainActivity$PInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private prettyPrint()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "taskmanger"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->appname:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->pname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/main/auth/DelateMainActivity$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
