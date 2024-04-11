Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F415E8A143D
	for <lists+jfs-discussion@lfdr.de>; Thu, 11 Apr 2024 14:17:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rutMY-0006II-EN;
	Thu, 11 Apr 2024 12:17:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1rutMW-0006I3-NQ
 for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Apr 2024 12:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tuHA1e8X3klZLTfe7IoJd81w8+BJeqW9FDqVUSy7N5g=; b=Zm7kXk7B6HpV/LIHTruOKsd3Qb
 cPceyrO1/w1WEHcsLz4NiC4Vq1xjfWJ7/V5Th2zND4b4Eir0+weIheV3kQN1Ags2u8JQ+ZuRyymxS
 HNen0Tlc2SGfJusV1AhD8ynG46iyUs9fBtYoA64SLNjuRRZHYM/kNzcZHzfCGHLJX9LM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tuHA1e8X3klZLTfe7IoJd81w8+BJeqW9FDqVUSy7N5g=; b=J7zq3Jla6DVynw/TcISwdlJ/vu
 WgIGyzFuwjqDLAExNLQiull/mbyomeKDphMi3pUjRukTw80paxeUydf1yqgIhq0kUlLg7QdgDNCba
 q14S1yH4KdFQZLCoxdGlyLFmTbXhf5UwUdfWJo1t+l7MUdG46gnl9cdy0v8Z16Lhivik=;
Received: from out203-205-221-236.mail.qq.com ([203.205.221.236])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rutMV-00073I-9P for jfs-discussion@lists.sourceforge.net;
 Thu, 11 Apr 2024 12:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1712837510; bh=tuHA1e8X3klZLTfe7IoJd81w8+BJeqW9FDqVUSy7N5g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Bd77pttBjtRcAzC6yk8vfG6VMz7/5bmoHcxZ9rawKguPfhTnd68dQOLOeUYS+Lq1I
 jCDt8eJi1C8dxyED14987TOXgdh+EzY/IcjCrWcf/tnLfhS2r1/fgXKhvhcU0Ase+F
 czR0LWRg3DyA8u8Q2y11V1tX7Uz0j6uY7EOo1tfU=
Received: from pek-lxu-l1.wrs.com ([111.198.228.153])
 by newxmesmtplogicsvrszc19-0.qq.com (NewEsmtp) with SMTP
 id 15BBE4D3; Thu, 11 Apr 2024 20:05:27 +0800
X-QQ-mid: xmsmtpt1712837127th3fua2c4
Message-ID: <tencent_4AA6ED5ECD6879FE6FD02EFD6D109638E80A@qq.com>
X-QQ-XMAILINFO: OZZSS56D9fAjI4P3w0jk/ucTXkXPH6oE2Y8+QRawsqZtKzMg9Settplp+91tJC
 mwwQUC7HFmA5AvdnpBfoJf/mGj0IxYphBZbw0J1rfhCBY4tJ+RZcwUb1i6uUkR0LFaIwUxZgls9G
 KLUHY7YEDSoxIlzQpUv1lp9TIYKevlcYwfv3/uglMg3PZn22pYD26YDc0fgllE3Y3/0GS4EQabWg
 LURnCE3str0hVFa6boFUZDltVIAqHGZrkjl3xVF9Eonx1EnmlXuyYkFERvAxzJMimKe+ZIsihKWa
 ZW8CSON7pUP2yQStVrqE3cWwj0YIQ4DhbYcQXPCPsCblwILMFe/SWhExLL9M3ul4SdzBH69gLVWh
 1xr61RsRMWnOZfjfuND64kYirZaD5g99pTJinO8Tonk2+rwDvP7BdQ3Kq18osiju+M3QGFuIBseP
 KEg3xygKnWgG2DQjEwVjVmz73KVcymsyWQmcv7BHeMmKK2kkfODLQIQjpFviA0trxt9GsqjyB6tG
 kx0De1kGb141dPZ7Ns8dTxU/e6otA2FacCi2QIR+zcWsqOFPj39LvuUZlKZnEZcCDBMWXrKa359p
 9vIm/WFae9t5uXL9iGVJFH3G5Cgh3E1YZyUHs7xHcS+6D+47rMEwkMOzCQ0FMguwpK6LWzTOu4so
 BnB3/RpIIQjPinIGER7tOuolzN8m01TZ9zizWTVGKdJYdcEvmRNjSVttV9zC99ceqXNeboitrwcU
 SwCtMus1xJW4SeRgN4Fr8Q37ig3S5UeFn4TjI8YsUnVrhu+R4uy8W2H9RSakzPBWtFG8oA8Le/zL
 Dw3PlkKxPK9eMvNScBuSHSAPo+cmLkxe85ZI55jxqLQDAKiXrjYHhwxhQKQYckU6wugLwwdKXpUN
 r6jsFuSpp6Vl2QDJXf6RYff+OsJFjAqdlj++eGFHTRM9O05iN97jqUqCq8ErjoESKouUVd7e8sVo
 8xmAsQjhcgr5B5sFIoelvQjwIPgpnv
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
To: dave.kleikamp@oracle.com
Date: Thu, 11 Apr 2024 20:05:28 +0800
X-OQ-MSGID: <20240411120527.1315528-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <f4f7c644-b229-486b-973b-97c55dac334f@oracle.com>
References: <f4f7c644-b229-486b-973b-97c55dac334f@oracle.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  [syzbot reported] general protection fault,
 probably for non-canonical
 address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI KASAN:
 null-ptr-deref
 in range [0x0000000000000008-0x000000000000000f [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [203.205.221.236 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1rutMV-00073I-9P
Subject: [Jfs-discussion] [PATCH V2] jfs: fix null ptr deref in dtInsertEntry
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 eadavis@qq.com, linux-kernel@vger.kernel.org,
 syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

[syzbot reported]
general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
...
[Analyze]
In dtInsertEntry(), when the pointer h has the same value as p, after writing
name in UniStrncpy_to_le(), p->header.flag will be cleared. This will cause the
previously true judgment "p->header.flag & BT-LEAF" to change to no after writing
the name operation, this leads to entering an incorrect branch and accessing the
uninitialized object ih when judging this condition for the second time.

[Fix]
After got the page, check freelist first, if freelist == 0 then exit dtInsert()
and return -EINVAL.

Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dtree.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 031d8f570f58..5d3127ca68a4 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -834,6 +834,8 @@ int dtInsert(tid_t tid, struct inode *ip,
 	 * the full page.
 	 */
 	DT_GETSEARCH(ip, btstack->top, bn, mp, p, index);
+	if (p->header.freelist == 0)
+		return -EINVAL;
 
 	/*
 	 *	insert entry for new key
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
