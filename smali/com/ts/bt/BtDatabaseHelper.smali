.class public Lcom/ts/bt/BtDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BtDatabaseHelper.java"


# static fields
.field public static final CREATE_DIALLOG:Ljava/lang/String; = "create table diallog(id integer primary key autoincrement, addr text, name text, num text , time text,type text)"

.field public static final CREATE_PHONEBOOK:Ljava/lang/String; = "create table phonebook(id integer primary key autoincrement, addr text, name text, num text, collect integer, pinyin text, first_name text, middle_name text, given_name text)"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    iput-object p1, p0, Lcom/ts/bt/BtDatabaseHelper;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    const-string v0, "create table phonebook(id integer primary key autoincrement, addr text, name text, num text, collect integer, pinyin text, first_name text, middle_name text, given_name text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    const-string v0, "create table diallog(id integer primary key autoincrement, addr text, name text, num text , time text,type text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 33
    return-void
.end method
