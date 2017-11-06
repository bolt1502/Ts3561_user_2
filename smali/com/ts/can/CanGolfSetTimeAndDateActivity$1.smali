.class Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;
.super Ljava/lang/Object;
.source "CanGolfSetTimeAndDateActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanGolfSetTimeAndDateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;->this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "myyear"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 232
    const-string v0, "CanGolfSetTimeAndDateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u8bbe\u7f6e\u4e86\u65f6\u95f4\uff1a\u5e74"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6708 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65e5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;->this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    # getter for: Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->access$0(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    move-result-object v0

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    .line 235
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;->this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    # getter for: Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->access$0(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    move-result-object v0

    iput p2, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Year:I

    .line 236
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;->this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    # getter for: Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->access$0(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Month:I

    .line 237
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;->this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    # getter for: Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->access$0(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    move-result-object v0

    iput p4, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTime;->Day:I

    .line 238
    iget-object v0, p0, Lcom/ts/can/CanGolfSetTimeAndDateActivity$1;->this$0:Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    # getter for: Lcom/ts/can/CanGolfSetTimeAndDateActivity;->mCurTime:Lcom/lgb/canmodule/CanDataInfo$GolfTime;
    invoke-static {v0}, Lcom/ts/can/CanGolfSetTimeAndDateActivity;->access$0(Lcom/ts/can/CanGolfSetTimeAndDateActivity;)Lcom/lgb/canmodule/CanDataInfo$GolfTime;

    move-result-object v0

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfSetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V

    .line 239
    return-void
.end method
