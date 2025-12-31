Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B70CCEB31D
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Dec 2025 04:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dkoluIuhrpbHhoJXO3nFEL7CE42rzd/16LB2FydQtJA=; b=M//VCcs9ukiihaSmBWeRo7YmOO
	wigYRRKXEdHnzHrBH5JKocsGQ2yYZOZNWn/k5Rwa8Iqp+Zms/GylVDJp6nN83WObvhDLGpCdNcJms
	XXpadhFikN4zRjx4uqn3pKu9nj+s2OsfPXmmTirk3VDAEQ7Md9hAdTg5gMNTBWZI2/xc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vamxo-0002XL-TA;
	Wed, 31 Dec 2025 03:33:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vulab@iscas.ac.cn>) id 1vamxm-0002XF-W8
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 Dec 2025 03:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ipkZBxe3hwCY/EoTxuJZGREQ9u56DYFcYYYmVGRiVUE=; b=MVk45UWeBWe6g1KVVlVi8LhLj5
 gpqmooUphDqdDQoWCBhCJ8BVXEbhj99LW9OaMBe/ACHx7Z8VlMGFlwo4HL1RCL5CXus+48Q/ar3uL
 JXY5bkSt0lxvnZxaq420bdOdpzYlklSdioudSDriuRFxx4xPteXQ6ewmgEZy2ipv+tNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ipkZBxe3hwCY/EoTxuJZGREQ9u56DYFcYYYmVGRiVUE=; b=A
 /eOx58h6HDzapG2eKxN4HCsqLEYj6k+fC10rWSKogPZ1IWptuChdm/PifW8bCz7hMZtEdyDbwt4sD
 WZ/nlpsu4UX0UERVyy0Kv6NIt+ZqLwV7N5Hj2RnpBbD4FvBGcieOubbe9rcjVMftJjdGdTer6Cyu3
 khb9HVdtQ17mAKMQ=;
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1.2:DHE-RSA-AES256-SHA:256)
 (Exim 4.95) id 1vamxl-0001zY-UJ
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 Dec 2025 03:33:30 +0000
Received: from DESKTOP-L0HPE2S.localdomain (unknown [124.16.141.245])
 by APP-01 (Coremail) with SMTP id qwCowACnTGh6mVRpjwB6Ag--.18768S2;
 Wed, 31 Dec 2025 11:33:15 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: shaggy@kernel.org
Date: Wed, 31 Dec 2025 11:31:26 +0800
Message-ID: <20251231033126.64087-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: qwCowACnTGh6mVRpjwB6Ag--.18768S2
X-Coremail-Antispam: 1UD129KBjvJXoWrKw18WFyfuw4fKrWfAFykAFb_yoW8JrWUp3
 92kF47K39Yq3yrAFn7tF1UXayYk3s5trW8JryFqrW0yw18Kr17C3W0qF93WF1DGr4Fq34Y
 9F4UKFn5uF4UZ3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkG14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY1x0262kKe7AKxVWU
 AVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14
 v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkG
 c2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI
 0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4U
 MIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUBVbkUUU
 UU=
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiDAYNA2lUhg9A2QAAsp
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported an array-index-out-of-bounds access in
 diAllocBit(), 
 where im_agctl[] is indexed by agno derived from on-disk agstart without
 validation. agno is computed via BLKTOAG() and may become negative or exceed
 MAXAG when the filesystem metadata is corrupted, leading to an out-of-bounds
 access to imap->im_agctl[]. 
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1vamxl-0001zY-UJ
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diAllocBit()
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: jfs-discussion@lists.sourceforge.net, aha310510@gmail.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+015483fc71d1413f40ee@syzkaller.appspotmail.com,
 Haotian Zhang <vulab@iscas.ac.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot reported an array-index-out-of-bounds access in diAllocBit(),
where im_agctl[] is indexed by agno derived from on-disk agstart
without validation.

agno is computed via BLKTOAG() and may become negative or exceed
MAXAG when the filesystem metadata is corrupted, leading to an
out-of-bounds access to imap->im_agctl[].

Validate agno before using it and abort the operation if the value
is invalid.

Reported-by: syzbot+015483fc71d1413f40ee@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=015483fc71d1413f40ee
Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
---
 fs/jfs/jfs_imap.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..cc72fcaa94e2 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -2044,6 +2044,14 @@ static int diAllocBit(struct inomap * imap, struct iag * iagp, int ino)
 	 * the extent.
 	 */
 	agno = BLKTOAG(le64_to_cpu(iagp->agstart), JFS_SBI(imap->im_ipimap->i_sb));
+	if (agno >= MAXAG || agno < 0) {
+		if (amp)
+			release_metapage(amp);
+		if (bmp)
+			release_metapage(bmp);
+		return -EIO;
+	}
+
 	extno = ino >> L2INOSPEREXT;
 	bitno = ino & (INOSPEREXT - 1);
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
