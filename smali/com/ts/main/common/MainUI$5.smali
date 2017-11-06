.class Lcom/ts/main/common/MainUI$5;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/MainUI;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainUI;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/MainUI$5;->this$0:Lcom/ts/main/common/MainUI;

    .line 4110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4114
    const/4 v1, 0x1

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4115
    return-void
.end method
