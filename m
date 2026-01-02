Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0270CEF6E8
	for <lists+jfs-discussion@lfdr.de>; Fri, 02 Jan 2026 23:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PXlPajHwbMu+nY+6aQM+O49psotoQ15IbWJ0094ISEE=; b=ETFzU8U8gkbKtkY5GY3DXK8Krq
	DgS7sedqYXL/ulJg1UyREN2v4gTrJbmrfcGo4f+D91GxUazaSaJ2ptNBQ6hrIg8Qw2JFDExr3JB0f
	2E5Sz9dEfsQMX14wAYPuaNofPuQHDNBnoS8uR2Huk2eFtDwznW6omhnYlo6wa9HsiVdQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vbnfz-0002Og-Nt;
	Fri, 02 Jan 2026 22:31:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zlatistiv@gmail.com>) id 1vbkCq-0007cD-NR
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Jan 2026 18:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v4oacTi3nr84z9qP/uE6rFbcJexvIqwHfc6MGDOAK/o=; b=V4DKx7xypUFbk9zPSX+NjuX5fW
 bPNN5RO13qtukM+Zu0lTqyFTx7t8+t5RpIFRLGf8T1XRQt5Bdtt6bLJc7sExZQWEgtGe1K7bcIuxx
 GC57MPtFaB9FUQZIpOY1L2YsgGXnuzTaqKPnb39dDHNxXRsb6HvHSPBF3KjFsY72lTrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v4oacTi3nr84z9qP/uE6rFbcJexvIqwHfc6MGDOAK/o=; b=T
 2no5AODOegtC+eOt4voz/wS3nFLPNZ3ZdEQSZokIP0SVdh2+bbkdoDXMey2v4atNZDqiZbAKG9exe
 Xeb5V14Qa7IXx3aHOG0RSEbQCvj8EwdR7fibUUrwBm3LoUEN/2t5DWeZfSXmqrA9my7WcuzpGIKUX
 PVL9pQawbwLA9tTc=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vbkCq-0007Fv-9e for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Jan 2026 18:49:00 +0000
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-64b5ed53d0aso17791768a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 02 Jan 2026 10:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767379734; x=1767984534; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=v4oacTi3nr84z9qP/uE6rFbcJexvIqwHfc6MGDOAK/o=;
 b=DN4CBWQ8PDILpJrYC2MzWdFeQkM/rTNwks95lJJZynvtDNkQwpbUVVoKc5eEhE1VtJ
 oLQjczXFfWYJ40uEpRWqNv1QorokxMMExYt2F3qj6gvCQN9sIKAmdcIsnZ68htlPMtkm
 XsVs2ugutWAkjn3zTHazd0jYrgNsAE/W0nZPvMlx8pw1TY6PfPnErnli+VR2jaYqrGGz
 XBttKveXvFPq5WLPWfY/FGpABJA1meh+ZjJOTTQQRDYtYPv2/3FVLR31a4/dsnQQWiU6
 o0qB6mhypKxaKH5MODoaRqANqcWaI2qZykQyABa8rEfuYlvPSRDlhYNfMat7/kmBdrx4
 Nvpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767379734; x=1767984534;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v4oacTi3nr84z9qP/uE6rFbcJexvIqwHfc6MGDOAK/o=;
 b=dMG0NyEoxeZIbnGUJ7R0AomAplkhOjTbfOn2pgeX6/cRGIVPVm8AhgPQ1TP808AD1+
 /YSuatvq1LWAuJSbG/srxXD7FzNxmf5FnuwoJt7oCsqhAUcot7HjDQ1mlbQhlBV31IwI
 aXTnvKeAliDIv4IqkS6hkh2tLvXWvQQ8t1+uOXpBnGq7ENRkNPDTCfH2BPCuzbu+TM9b
 ydU+C/bdAO5/spv9ZOJCbx/RaRDnNNNjyfOTFmsN0FlKm7Kl039r4aCt/TqpyVXWl0ZB
 7LqHHYP9c3JLuUsAjPcwJOExKB/0c/f7oUZNu+Y/Y2B46k+lkKDelnbCQaAyJXOcVmoe
 HHEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPM2YVvmiMzV5tN43JsEG9ucJSErlGNrMZzvAWla8is5B2mmFMn/WbdCphE8wPVatw5Bzr+mjD7u1QW97RDA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzmnYoAIClxtnZQ3BeGL3jiQMjkHGUAr4FVMY3WQQNDhwKlurUB
 cBOQeVxyL5qMDhCNWipDXMcJWrrHe6Q1t/YignDWR/BcUPIZigI15F/f
X-Gm-Gg: AY/fxX5BhmE5wyHyLP8z2iuwmaSv7+VtzT/s1Kr6ecmrFbtz92zOGPLVF5voUITrPAL
 dzncuguBay1mHq2+5ybxA+1gT8Tmc1y9E+jw8aiYSLuy/oVQLtjIwAp7XANiLNy/4yzH/qnqNkG
 bKW+m/N/A7qpv6aHubtTR6GDapTG3cwwNC45brlrP0M2uvP6fg3I3C0m5DVkBpBxMrT/rSUnV95
 LXYqL7E3p+oqD10t3UDlJCmrOe6BwmGnlJ3t8FcJcRSjCI81eszTvtu73+yGq8/fLjvnXGv65s6
 yfVkFTWd5yupq/LNEMrqECoN2BjkINT/8QbTJuHaE/IlnRHoL3omEBtULdCBgtNz8C9As28kLWb
 lv8DX403yPsgBPdNq94J3ugOwLD4NK0RotZzARUaweVHAm6mlfACLZRPISSyo9evM0QWJ2IQUU3
 K2IWQFB6LuZ6yxUl56XFSmYh7UiSrPGp9t
X-Google-Smtp-Source: AGHT+IGTE7fO6rSdedoJ9BhDiuu0KWLIeHS+ESEYY9vxTsP9u1m3m6XzzyUWfLw5Bs7eZx2Ek1qc/g==
X-Received: by 2002:a17:906:730f:b0:b80:b7f:aa10 with SMTP id
 a640c23a62f3a-b80371d8c5cmr4543531966b.59.1767379733488; 
 Fri, 02 Jan 2026 10:48:53 -0800 (PST)
Received: from localhost.localdomain ([46.10.223.24])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8037f512e3sm4638909066b.67.2026.01.02.10.48.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jan 2026 10:48:53 -0800 (PST)
To: shaggy@kernel.org, dmantipov@yandex.ru, quic_zhonhan@quicinc.com,
 eadavis@qq.com, jfs-discussion@lists.sourceforge.net
Date: Fri,  2 Jan 2026 20:48:49 +0200
Message-ID: <20260102184849.1932768-1-zlatistiv@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reports "VFS: Busy inodes after unmount" which is
 caused
 by a deadlock in the jfsCommit thread, in a call to diFree. The filesystem
 from the syz repro can be used to reproduce the deadlock by mounting it,
 deleting a file and running "sync" or unmounting the filesystem. Running
 "fsck" on the filesystem image seemingl [...] 
 Content analysis details:   (0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
 [46.10.223.24 listed in dnsbl-2.uceprotect.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.208.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zlatistiv(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
X-Headers-End: 1vbkCq-0007Fv-9e
X-Mailman-Approved-At: Fri, 02 Jan 2026 22:31:18 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Check for discrepancies between iag
 and inomap iagctl
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
From: "Nikola Z. Ivanov via Jfs-discussion"
 <jfs-discussion@lists.sourceforge.net>
Reply-To: "Nikola Z. Ivanov" <zlatistiv@gmail.com>
Cc: syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, "Nikola Z. Ivanov" <zlatistiv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot reports "VFS: Busy inodes after unmount" which is caused
by a deadlock in the jfsCommit thread, in a call to diFree.

The filesystem from the syz repro can be used to reproduce the
deadlock by mounting it, deleting a file and running "sync" or
unmounting the filesystem. Running "fsck" on the filesystem
image seemingly fixes the inconsistency and we no longer deadlock.

This happens because the IAG that contains the inode we are
freeing is head of the free list, but also holds nfreeinos = 0,
which will lead to a deadlock when we try to add it as head
of the free list, since it already is head of the list.

Fix this by adding a check for the discrepancy before
reading more metapages that could potentially match with "mp".
Do the same for the extent free list as it may lead to a
similar deadlock.

Reported-by: syzbot+d569e274f46ca86f78fa@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=d569e274f46ca86f78fa
Signed-off-by: Nikola Z. Ivanov <zlatistiv@gmail.com>
---
 fs/jfs/jfs_imap.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..fd9f9babaf46 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -902,6 +902,25 @@ int diFree(struct inode *ip)
 	}
 	iagp = (struct iag *) mp->data;
 
+	/* We will deadlock if due to inconsistency
+	 * the iag has no free inodes/extents but is
+	 * head of the respective free list
+	 */
+	if (iagp->nfreeinos == 0 && imap->im_agctl[agno].inofree == iagno) {
+		IREAD_UNLOCK(ipimap);
+		AG_UNLOCK(imap, agno);
+		release_metapage(mp);
+		jfs_error(ip->i_sb, "nfreeinos = 0, but iag is head of freelist\n");
+		return -EIO;
+	}
+	if (iagp->nfreeexts == 0 && imap->im_agctl[agno].extfree == iagno) {
+		IREAD_UNLOCK(ipimap);
+		AG_UNLOCK(imap, agno);
+		release_metapage(mp);
+		jfs_error(ip->i_sb, "nfreeexts = 0, but iag is head of freelist\n");
+		return -EIO;
+	}
+
 	/* get the inode number and extent number of the inode within
 	 * the iag and the inode number within the extent.
 	 */
-- 
2.51.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
