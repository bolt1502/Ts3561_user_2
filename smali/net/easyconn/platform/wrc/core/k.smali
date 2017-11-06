.class public Lnet/easyconn/platform/wrc/core/k;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WrcSQLiteOpenHelper.java"


# static fields
.field private static a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 5

    .prologue
    .line 15
    sget-object v0, Lnet/easyconn/platform/wrc/core/k;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lnet/easyconn/platform/wrc/core/k;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lnet/easyconn/platform/wrc/core/k;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lnet/easyconn/platform/wrc/core/k;

    const-string v2, "wrc.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lnet/easyconn/platform/wrc/core/k;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lnet/easyconn/platform/wrc/core/k;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lnet/easyconn/platform/wrc/core/k;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS uuids(_id integer primary key autoincrement, uuid text)"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lnet/easyconn/platform/wrc/core/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
