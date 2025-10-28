Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 920FDC14D69
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 14:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IyzY+If5X+mNG4frEx2dmdYyMW1E/EvwLB5NlEStthk=; b=nOjhCk5DZu7P5xIYXei/+p3o9v
	Zs3MotMpwABnHrX4XcyfswS7x0pgnNJ4aK7Tc6/IScRjBeD1E61G7ctBtJZMMRWrftLcue3cRODk6
	a/jIFGvKUoAEMybgGGPhkW9l4fAFPGUer0HHl5uWZ1Y8F6vX1i1prq4tlUjsq1YyrDN4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDjjj-00061g-HI;
	Tue, 28 Oct 2025 13:27:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vDiiZ-0004yY-4E
 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 Oct 2025 12:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6hGTw/im2BS7bu9qrR+TzihP9cldUdB2xJLe6OVfK1w=; b=bTjdj2G3oHf+tIieax8ySVfGZu
 tIGNUAGIxwifp1tADCwIN6Rh9iqcyqYLdA6QwGGlgLM1J4nH6TIKuk2lRExuiWtZ/7377oQY+YJTd
 s/vLBEquTNKonjVrZgN+DljRyUm0/MuwmEW1m/bLMy+M/Yya1/emWnI0h0vkGQRMTEI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6hGTw/im2BS7bu9qrR+TzihP9cldUdB2xJLe6OVfK1w=; b=C
 RhwohAtmvx5AfLLGdlWT2PH7LvNhYM9XOFedkThHWb0/i+98pWIYplh8E1HbEjYx80CzHurwRIvu6
 JBOgJgFMJeWcJb8ZR/Y94/oba3C4Y155wAz8DK6F+0hTrSeLPMdCl5ahSapmoRQBKhzJPgUSi304/
 VYyDKEUxb2fuyVGM=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.186])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vDiiX-0002dv-VD for jfs-discussion@lists.sourceforge.net;
 Tue, 28 Oct 2025 12:22:27 +0000
X-KPN-MessageId: 17cc7e56-b3f9-11f0-b0b9-00505699b430
Received: from smtp.kpnmail.nl (unknown [10.31.155.6])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 17cc7e56-b3f9-11f0-b0b9-00505699b430;
 Tue, 28 Oct 2025 13:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=mime-version:message-id:date:subject:to:from;
 bh=6hGTw/im2BS7bu9qrR+TzihP9cldUdB2xJLe6OVfK1w=;
 b=Qt+70qnzIbi+vAWxXvUmZgk6AIfwztgT09mG/25KuJ4BlW41wOdAOAsgDPbedxwkGavK4yUDzUH1Q
 xlCB1y/TbjqCV0M5ZUa6BJkAnYUppbtVGcZt+aJzOTRAYP5qujl1kzEA5mxzC+pM+tC8TMnYggHD6g
 pPOzcH1bGsvlEJZ8bhFh+9PpgnoIuTQugJPWSqLHJeTbf7oatnY/iliPFtm8Otci1WwNAoT/5/pA71
 zqvLU1qEHHRm0XZQjOM78VCMwWE6vjmNua3kAaIhAqq2/XcWIK5AOClqamTz1tspGfn2LJLKpt1BN5
 9wQfVsIokHt6DeAz9dHbc/+Fqdgvs9Q==
X-KPN-MID: 33|p+RV6W9QzUQHX9Ar2UCHdRItZsgflKwRX4+wxlZPKivM5xakmPdp8vdQMLHvWvr
 PdTvI/YE04gcbwfY1aDdb3otk56Jqw+h4XZYbFH541gE=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|r0IRAVaLQQnFj/6NHjVgNozaylTQSPecBpP7soA74NAdZH9CDh6nNtd0CMxyrId
 XyBkrkFuHj1HVvTjG83J4Eg==
X-Originating-IP: 178.231.9.54
Received: from daedalus.home (unknown [178.231.9.54])
 by smtp.xs4all.nl (Halon) with ESMTPSA
 id bbd9284a-b3f8-11f0-bff1-00505699772e;
 Tue, 28 Oct 2025 13:22:13 +0100 (CET)
To: Dave Kleikamp <shaggy@kernel.org>, Jeff Layton <jlayton@kernel.org>,
 Christian Brauner <brauner@kernel.org>,
 Gabriel Krisman Bertazi <gabriel@krisman.be>, NeilBrown <neil@brown.name>,
 Al Viro <viro@zeniv.linux.org.uk>
Date: Tue, 28 Oct 2025 13:22:12 +0100
Message-ID: <20251028122212.290745-1-jkoolstra@xs4all.nl>
X-Mailer: git-send-email 2.51.1.dirty
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: If nlink is maximal for a directory (-1) and inside that
 directory
 you perform a rename for some child directory (not moving from the parent),
 then the nlink of the first directory is first incremente [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [195.121.94.186 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vDiiX-0002dv-VD
X-Mailman-Approved-At: Tue, 28 Oct 2025 13:27:42 +0000
Subject: [Jfs-discussion] [PATCH] nlink overflow in jfs_rename
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
From: Jori Koolstra via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: jkoolstra@xs4all.nl, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

If nlink is maximal for a directory (-1) and inside that directory you
perform a rename for some child directory (not moving from the parent),
then the nlink of the first directory is first incremented and later
decremented. Normally this is fine, but when nlink = -1 this causes a
wrap around to 0, and then drop_nlink issues a warning.

After applying the patch syzbot no longer issues any warnings. I also
ran some basic fs tests to look for any regressions.

Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
Reported-by: syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com
Closes: https://syzbot.org/bug?extid=9131ddfd7870623b719f
---
 fs/jfs/namei.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index 65a218eba8fa..7879c049632b 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -1228,7 +1228,7 @@ static int jfs_rename(struct mnt_idmap *idmap, struct inode *old_dir,
 				jfs_err("jfs_rename: dtInsert returned -EIO");
 			goto out_tx;
 		}
-		if (S_ISDIR(old_ip->i_mode))
+		if (S_ISDIR(old_ip->i_mode) && old_dir != new_dir)
 			inc_nlink(new_dir);
 	}
 	/*
@@ -1244,7 +1244,9 @@ static int jfs_rename(struct mnt_idmap *idmap, struct inode *old_dir,
 		goto out_tx;
 	}
 	if (S_ISDIR(old_ip->i_mode)) {
-		drop_nlink(old_dir);
+		if (new_ip || old_dir != new_dir)
+			drop_nlink(old_dir);
+
 		if (old_dir != new_dir) {
 			/*
 			 * Change inode number of parent for moved directory
-- 
2.51.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
