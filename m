Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE1DB550CC
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Sep 2025 16:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:References:To:From:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5iUKRyy2NTlbWayzQmuVAxMPkya1Xp2rwDaGc3IJoTI=; b=mqA+KlGPgeq5VzrAF/ib4Fg7Zu
	FAhjPV88eOji1B966rHMztiu5F7Ro9jRQjkPtcfVCq1NBvp/V2PPzWD4ZripPol5Fycd/kV/EFfxR
	eOITsAdZn3aPz+trn3Fy1F//zVUvKO6s1dNmFaw0HpL2BjHMgDbpMscpLFdtALfmr+T8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ux4cD-000428-P3;
	Fri, 12 Sep 2025 14:19:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1ux4cB-00041z-Dl for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Sep 2025 14:19:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9GCXGa+y4BAmy3MXs/gtU7lHVvGo/nnWhPG8XOjTsIM=; b=QsspgKGNfD/heujFD3DdCkFz/K
 OvUHBW/puzbIAlmDF5Oy7tOFJKKbvwY6hL9K5Gj2VYv59IAlq2btvNv41fzwKboukad7lABWRpLJd
 MU+lEfgumkONsxf5c8NCNHICmbh8rwQMkj9I/TtPqbBPOxlSEoUeqfGdRewPWDbY1Y+c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9GCXGa+y4BAmy3MXs/gtU7lHVvGo/nnWhPG8XOjTsIM=; b=E4Ny7Q1glZ2FTg8DdvJr+vTNDv
 /bQQE8Ued/awlMN6b3tPuWpj4dIFjqTlVqT2n8yo1W6KZvkZaxYW+VH2XprdoaXkSFpTKMswd9YiA
 Y+V2dB0qaNQFns9zKqNsChrm1Pw0NWHEDRGEpo/ggSKumjiEcn2AuWWUC8hD1jup/ZH8=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ux4cA-0007uX-Id for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Sep 2025 14:19:03 +0000
Received: from www262.sakura.ne.jp (localhost [127.0.0.1])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 58CEIiUn050764;
 Fri, 12 Sep 2025 23:18:44 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from [192.168.1.10] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 58CEIiov050760
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 12 Sep 2025 23:18:44 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <a471c731-e6ae-408d-b8b8-94f3045b2966@I-love.SAKURA.ne.jp>
Date: Fri, 12 Sep 2025 23:18:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
To: Christian Brauner <brauner@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>
References: <1cd51309-096d-497f-8c5e-b0c9cca102fc@I-love.SAKURA.ne.jp>
 <dce0adb2-a592-44d8-b208-d939415b8d54@I-love.SAKURA.ne.jp>
Content-Language: en-US
In-Reply-To: <dce0adb2-a592-44d8-b208-d939415b8d54@I-love.SAKURA.ne.jp>
X-Anti-Virus-Server: fsav302.rs.sakura.ne.jp
X-Virus-Status: clean
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The inode mode loaded from corrupted disk can be invalid.
 Do like what commit 0a9e74051313 ("isofs: Verify inode mode when loading from
 disk") does. Reported-by: syzbot
 <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>
 Closes: https://syzkaller.appspot.com/bug?extid=895c23f6917da440ed0d
 Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKU [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ux4cA-0007uX-Id
Subject: [Jfs-discussion] [PATCH (REPOST)] jfs: Verify inode mode when
 loading from disk
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The inode mode loaded from corrupted disk can be invalid. Do like what
commit 0a9e74051313 ("isofs: Verify inode mode when loading from disk")
does.

Reported-by: syzbot <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>
Closes: https://syzkaller.appspot.com/bug?extid=895c23f6917da440ed0d
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
---
This fix is similar to fixes for other filesystems, but got no response.
Do we have to wait for Ack from Dave Kleikamp for another month?

 fs/jfs/inode.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index fcedeb514e14..21f3d029da7d 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -59,9 +59,15 @@ struct inode *jfs_iget(struct super_block *sb, unsigned long ino)
 			 */
 			inode->i_link[inode->i_size] = '\0';
 		}
-	} else {
+	} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
+		   S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
 		inode->i_op = &jfs_file_inode_operations;
 		init_special_inode(inode, inode->i_mode, inode->i_rdev);
+	} else {
+		printk(KERN_DEBUG "JFS: Invalid file type 0%04o for inode %lu.\n",
+		       inode->i_mode, inode->i_ino);
+		iget_failed(inode);
+		return ERR_PTR(-EIO);
 	}
 	unlock_new_inode(inode);
 	return inode;
-- 
2.51.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
