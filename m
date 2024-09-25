Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF31F985F40
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 15:53:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stSSd-0007BR-1t;
	Wed, 25 Sep 2024 13:53:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1stSSc-0007BG-5a
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 13:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xDQ/047YH46qDRI7w0LS7iGSEzIWbAIopOEzW3KNye8=; b=i2LGwjx4PyMS87blBDq+ujFonB
 VUUXs7WrhXqTP60cxio52JOei+elq8ffa8L9OSnpkpApyryzElg9VwlF66T+tTNBCJewodv2rOvJd
 T3pF3i23w9jtJn8bX1sQutEugN2WkzotBSAncpYms/BESxLkJcND/pOlEFza709WUpQA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xDQ/047YH46qDRI7w0LS7iGSEzIWbAIopOEzW3KNye8=; b=TR2S8GvIzqbvrzodkDgigrC9tc
 LNIhGmZkyk7pr+JC76cYdDUIZk2ZOzkmo+Ykzd2iKQq4hZRqG9VAfIcJNA6Gyvs5QmQRV0ipp+sMn
 ejhoJzr75mfPtLKFkeObRcO8ubYMeR3b4bmzwMZ4wgrUuAoZLXe0Qyl+OWU/9RdFPnKI=;
Received: from out203-205-221-164.mail.qq.com ([203.205.221.164])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stSSY-00044p-AD for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 13:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1727272404; bh=xDQ/047YH46qDRI7w0LS7iGSEzIWbAIopOEzW3KNye8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=d6fD4eogMBxlh8vVoxKXl2OXj97wHL512mXjQUoYgTsauh7NzMvSQA1wrxmLtqdD4
 AsYRZQGHdegLPPWgiZDXrQzWgMDDxYr5Ye1Lk8huq0kC0bHLhVzAFnxfq0Xhgoc8q/
 lWfisscYNY3CC1UJdPJ3DdZv/g1nIwMM3hupQe/c=
Received: from pek-lxu-l1.wrs.com ([111.198.224.50])
 by newxmesmtplogicsvrsza29-0.qq.com (NewEsmtp) with SMTP
 id D402DE7B; Wed, 25 Sep 2024 21:53:00 +0800
X-QQ-mid: xmsmtpt1727272380tbx63wbr1
Message-ID: <tencent_4A8FBB4133EA9E461B0C4B2C1B2425FFBA08@qq.com>
X-QQ-XMAILINFO: NY3HYYTs4gYSCD4BjJa3oLj2wgetdTniRHGpPBJX6dm2difxmsv/fwTkOwmJY5
 jt6PpNTqYy5rI38TJLLAuCSkY9gVU7Q9eiFK6tOPRHW+31HToo0IeL9lZyo0XXXcimsazmvxSkDU
 XsppQQ+lej3dGDsGYjcz9Z08yBJUjda5SL4rMt1d1cXVHFgfCSPofoHQAMIwwua3bZgglf/2fTJw
 xuva/rW5nYj7cLej6f+agYfo1K4Jd8lmwlDaz90B6FatPhiCWahiQQMk5syEUo1GtcCAtBSS7Rgw
 rBSa8TEPCMvN1MavC1SapZm9spMn/wQqFM033aokDKbrrPktRBuHT8AZSPSkSDRVgWboMxmvBxMX
 ekLHmFDkJEeDNKscbmtad1u3WHrP5TcGft0y06HnSDNW+y0AYGL1b49jWnDtiZRdJW50hntyYd0N
 sOpUrOaR0n9yKJc+YykZIdNC2gl1yL0noZWUlgWkw0cQ0etXcVT6NUlA8JOPM6UlmYJjkaLdq85R
 x4lcUzbzuewh0jinBtzNh19RyTs282HQ1RIFzFor4QViHsDAf/WtbTzR1bpk5X9s7k/HcWIDy185
 lygJYt2/BZCw0Cf9LlNZVdop+HbUSXAXbduPEy3s53lwUdYzELuE72EXJkYfrS7DYoWz48HEz5Jc
 IN6eB9GzQO/fjMGyo0ejV53kUdAU35ydnwuYV0FH3Ve3siXTDuqhGJMD5J5VHTjj814m3n7Hkbx7
 fdfR+id0RUI/Dg5gA35pOZHciygL2fMkXpUGuCIIYuZM3UhXsdEKMA4W9VdxgJSh4OcGqUUPBFUB
 vKYjJ1FNJFlQ9ShemPz6QYdIPX4C4dxThAuTeQe7gceAyVgGfkcE4XwNJQqGYNGjPJ5Jr9aJh9RN
 K1BcHgb5UrMqPm28AnpE8Z1NLhhBjFLGC/rI9hrf8e6BDFb31tb9YjGQ2In0U8WL2M9OS/fwlG+L
 Fr9Wtq65s=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
To: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com
Date: Wed, 25 Sep 2024 21:53:00 +0800
X-OQ-MSGID: <20240925135259.1575815-2-eadavis@qq.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <66f33aad.050a0220.457fc.0030.GAE@google.com>
References: <66f33aad.050a0220.457fc.0030.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Syzbot report a kernel BUG in vfs_get_tree. The root cause
 is that read_btree_nodes() returned 1 and returned -EINTR due to kthread_run()
 execution failure. The -EINTR needs to be returnned to bch2_fs_recovery(),
 not return to "ret = IS_ERR_OR_NULL(t)". 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1stSSY-00044p-AD
Subject: [Jfs-discussion] [PATCH] bcachefs: return the error code instead of
 the return value of IS_ERR_OR_NULL
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 kent.overstreet@linux.dev, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bcachefs@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzbot report a kernel BUG in vfs_get_tree.
The root cause is that read_btree_nodes() returned 1 and returned -EINTR
due to kthread_run() execution failure.

The -EINTR needs to be returnned to bch2_fs_recovery(), not return to
"ret = IS_ERR_OR_NULL(t)".

Reported-and-tested-by: syzbot+c0360e8367d6d8d04a66@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=c0360e8367d6d8d04a66
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/bcachefs/btree_node_scan.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/bcachefs/btree_node_scan.c b/fs/bcachefs/btree_node_scan.c
index b28c649c6838..df7090ca1e81 100644
--- a/fs/bcachefs/btree_node_scan.c
+++ b/fs/bcachefs/btree_node_scan.c
@@ -281,6 +281,10 @@ static int read_btree_nodes(struct find_btree_nodes *f)
 			closure_put(&cl);
 			f->ret = ret;
 			bch_err(c, "error starting kthread: %i", ret);
+			if (IS_ERR(t)) {
+				closure_sync(&cl);
+				return PTR_ERR(t);
+			}
 			break;
 		}
 	}
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
