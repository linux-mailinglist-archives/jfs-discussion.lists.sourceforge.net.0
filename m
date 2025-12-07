Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82149CAB13F
	for <lists+jfs-discussion@lfdr.de>; Sun, 07 Dec 2025 05:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M+KBADjpVDfzevAgVBbsgaQ0B7oTvxlpQKhlg/Z4Jdc=; b=K8gn0cccMRTLnnBH4r6TONsFq7
	pDc2xSRxVr8Y5jIyOyYjBMnsL9vxenfrRrTa35Ucg/ELjiJa06QPPt6gW8efeuA4QYYJuHP9Tr93j
	YdmGSEtVj07DqrUDJwiSQ1RY7TSP+sso1PEhmAgylnaYV40lG7QzUae/keVA0+fvAPic=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vS5x6-0007WQ-DI;
	Sun, 07 Dec 2025 04:00:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1vS5x4-0007WK-6K
 for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 04:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=10yILLSMzoDjy6sBHSnJWmw1AFCpigvyI+5k+cLQcoA=; b=Y1YkUxRB6JUtVos0TzO0VukrJ+
 wVGm1kXpRV0OQK684B2OIKPVeFAMklOCUgxePPbvbS6Nnsj2nXFT0GgeElchseTjiEWQ21/c/1Mo9
 x4k2a/RInMuXL2PHMTAJjMcHvLPvj0xyi6Zchyl+D1yc/f3E0Z2ExYgOJMytxZoBIRCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=10yILLSMzoDjy6sBHSnJWmw1AFCpigvyI+5k+cLQcoA=; b=av3Dy9/ew0AqY76/spJOEIKhpk
 j1iYqQG05dQIyvpCBzZdhGP31xZoLPKeNslB0XNOwbjwHYCF6ERXDGBevnjg2ZkEbr3AIpGlgi6O5
 +G2iV4qDBDxhjwgrvV7soCJvNFi/etu1CqlAC6AD86MFrnDxGTV76RACwW+STYrsckUk=;
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vS5x2-0006Lv-PJ for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 04:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1765080039; bh=10yILLSMzoDjy6sBHSnJWmw1AFCpigvyI+5k+cLQcoA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=W7EAkmpnuVXa8WibHPGWJBauYTTsiVdMaDx/fwIJSDYO+Zp6eSHWJB9IW2di4LwIq
 TtSChoEvPDpUFR1Fz0EkyqtTiSOL+RtM6vdOtx8cL7Y7QfvEWeu9zW1ug73rAJS1mW
 dNZHC3hNRhzhZoGhx6aAL+z95Qafph2pwuW0gig8=
Received: from lxu-ped-host.. ([111.201.7.117])
 by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
 id D393CCB0; Sun, 07 Dec 2025 11:52:57 +0800
X-QQ-mid: xmsmtpt1765079577t8ny84bb8
Message-ID: <tencent_C9EB8AEFD2CCF0793A6CD02EB56DE4952C0A@qq.com>
X-QQ-XMAILINFO: NixdzcUEL01Pb2/IS+7M+kU/LI8M68JA/LhsTWwgV+o3V/zkQbro+Gux/0BUbL
 5MtaH83qz9u8jhgSZwrOyPjekGILAZ3WeChWWXutBSilAgP6O2knOFSwfh5SLHSIDzC9wNqF3jJM
 j04PPWXgW0esSI1jI8rr7h+PCjJ8xEMG278jaBdmPuS9RYPAF/IVwsTTGux2K4CMi66NNeRr2CNv
 +83lLDsAZev3b/jjpzoSXi+h2LDnMX7wNR6gpZNgmbF3pctVbuMMSvqI/a6mmoIJPDAsv93pzqTM
 i3iYWPg6D9WrJ+No1BLpm4zlCMEzaqzkZTuCPIVoQEGPaviriVNGHv+66rLLOn0usT7pyfLCooms
 uUsyu+2s7mr3svXXxRTpxTSv8h1lmYyu9I6bmNt/bseVte5RvIXGWxfU+Urj09iJHmy7Li+QJe7z
 zAU+JBbGsu5zHXmld03AGTDl310o8eC4/xPx9g6LPqynmB5pOSzaCoaXzAdFCTEiJ1nasLf1ya7K
 P0uTgpOSDzylhGzd7jJksSmSSRMV74jEMjUke3x4bsYKqZpdqVjFKp10rBSvcpx9hyCUEHLlC0y9
 A4BmdpX/wdW4UDR0+j/ILq8bibKSTeuSF3DK1bT97ms07YWXfGNfz7OVUd5jV4wwAnrk1+MTrEqE
 bbGp7LKC+dkkNv2Z0+/rrzkyPZt7pc2w45dZRaHON29uex8vpBDUDQpF1nEVwE++nfENkt4ju0gG
 WTf8dxnrd7tSqbz/cV6GGlT8DV7GEf69HpGGz7Fu7DvVDYQbPlYP6gIFhuYXDrrJQ1RLEE0Or75J
 3VJTFNShi5wg8vWLuzGCWB6TdwoUgc3xdOpykw0ZaGAEsM1RRfakvx7Oael96VmzFqTTLfFeOxWR
 QiykeNbtEaj1lWUC1IjnMyN4UXGQg1dDkjhlmSFRIJY2ofjz8d546UCTOjEzKVlyayMXIob0buf+
 1PbkVQOva338PGPq6BePg2hw49etLBzgYs3Ci8VMsbly4/n5+BlVIICtBl9sbuMoFQbKK8OKQ=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
To: syzbot+fa603ae6b02658401ca7@syzkaller.appspotmail.com
Date: Sun,  7 Dec 2025 11:52:57 +0800
X-OQ-MSGID: <20251207035256.432600-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <69345a63.a70a0220.38f243.0031.GAE@google.com>
References: <69345a63.a70a0220.38f243.0031.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In a corrupted file system image, the budmin value is less
 than 0, which causes the lazycommit thread to report an out-of-bounds error
 when retrieving the buddy size in dbJoin [1]. Add a check for potentially
 negative budmin to avoid the problem in [1]. 
 Content analysis details:   (3.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [eadavis(at)qq.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [162.62.57.252 listed in wl.mailspike.net]
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP addr
 1)
X-Headers-End: 1vS5x2-0006Lv-PJ
Subject: [Jfs-discussion] [PATCH] jfs: Add a sanity check for budmin
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In a corrupted file system image, the budmin value is less than 0,
which causes the lazycommit thread to report an out-of-bounds error
when retrieving the buddy size in dbJoin [1].

Add a check for potentially negative budmin to avoid the problem in [1].

[1]
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2795:11
shift exponent 132 is too large for 32-bit type 'int'
Call Trace:
 dbJoin+0x2dc/0x300 fs/jfs/jfs_dmap.c:2795
 dbFreeBits+0x4e1/0xdb0 fs/jfs/jfs_dmap.c:2340
 dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
 dbFree+0x336/0x650 fs/jfs/jfs_dmap.c:398
 txFreeMap+0x7ff/0xde0 fs/jfs/jfs_txnmgr.c:2535
 txUpdateMap+0x308/0x9c0 fs/jfs/jfs_txnmgr.c:-1
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734

Reported-by: syzbot+fa603ae6b02658401ca7@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=fa603ae6b02658401ca7
Tested-by: syzbot+fa603ae6b02658401ca7@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dmap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699cd7c8..8f8084756e32 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2291,6 +2291,8 @@ static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 	int rc = 0;
 	int size;
 
+	if (tp->dmt_budmin < 0)
+		return -EUCLEAN;
 	/* determine the bit number and word within the dmap of the
 	 * starting block.
 	 */
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
