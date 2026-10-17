.class public final synthetic Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jonis/trainer/PacketCaptureService;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/jonis/trainer/PacketCaptureService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;->f$0:Lcom/jonis/trainer/PacketCaptureService;

    iput-object p2, p0, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;->f$0:Lcom/jonis/trainer/PacketCaptureService;

    iget-object v1, p0, Lcom/jonis/trainer/PacketCaptureService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/jonis/trainer/PacketCaptureService;->$r8$lambda$s7mnC69PDBLVEpj5a3nPDzwkOeM(Lcom/jonis/trainer/PacketCaptureService;Ljava/util/List;)V

    return-void
.end method
