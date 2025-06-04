Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 978DAACD831
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Jun 2025 09:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QFClknlH13ueVd7MeWUB2r33+ObOEuNQhcevthIrA+U=; b=kqzRbQNbwwTncA0d43o0eYwAMO
	FWYXVdMKK63aKmO+3S1SITrxcPqLc3rndh2MlgvPHlJuWeQ1PzJJcST2yxZxTqqMXHtRo4Vt3psdy
	gnwoWiZ9VwXAbD8ZKmlkFWgy76vhZmD2WQr9yBO8pxk2giEpMDUS4UYwmTTDzhRspkdY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uMi9B-00016l-Rh;
	Wed, 04 Jun 2025 07:02:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1uMi98-00016X-B9
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Jun 2025 07:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VZ4xNFAFJzzlvtqh/27P/VRB0oLM2LE76YUTjoDpWg0=; b=FiDiMznF42v70HZ8s/HRgguCDE
 dniDXcmUIScHriFOKuZwn5Wj2M7kaRR0B/XHaJHXlbtcS1S3qSt87nRe1w1kqzehXsZRoEClgW0vt
 hg6yBLtdg/h3rwlBTkv2f6XXLaKFTlTcxeUP8Aw4zVdU2AeK4btGZRPd3znP4/gMgk9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VZ4xNFAFJzzlvtqh/27P/VRB0oLM2LE76YUTjoDpWg0=; b=aLEwv9/HfXFNXWgEXO1WZ6fogb
 LpIrFFwmGx1xGH3hKyFEtRQGRwFZgcO2eNSH6nXgbBFNSuUaJi54KppJbAwrfUh0b3U4zAeFgBdNr
 dMClSO455cEqeVLZF9Sa8mgpeLluqch7yPdEIjkfsa+s0wedMnoEIZFgNjQ9uIRfgN/g=;
Received: from out203-205-221-240.mail.qq.com ([203.205.221.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uMi96-0008Cb-1Q for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Jun 2025 07:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1749020549; bh=VZ4xNFAFJzzlvtqh/27P/VRB0oLM2LE76YUTjoDpWg0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=U0++BGIS+tb8ZJB5eeVCNaF3AuU95Y84Phoy87ZsCrm7KFJ9DwHdYxlyuBD5g5Qjg
 P+HTUpOaqh+TumGKftrQjEm8ZtIl4EEXTQCSEVrD3LGHJe/6o233p8YENqvKzO0IT6
 R8uXVbwAFuQoE1k9SHJ7Cu02zv5V3agbYJROWpNQ=
Received: from pek-lxu-l1.corp.ad.wrs.com ([111.198.228.63])
 by newxmesmtplogicsvrszc13-0.qq.com (NewEsmtp) with SMTP
 id C4406278; Wed, 04 Jun 2025 14:49:04 +0800
X-QQ-mid: xmsmtpt1749019744tojud1zcu
Message-ID: <tencent_35CC9554E896EE32CDD479766DB42D056D0A@qq.com>
X-QQ-XMAILINFO: NQR8mRxMnur9i1RN+f7HC5UAoqLTSIGdXzpKHLAodfScGmZ1xcAdUZjNdV/TnZ
 pyzED9jgLibRE5PqSPTBfLVOLu9Y98BQr5g9wTghxNqZHaR3dQrW20sjfl3cb46S4qxGPbNdL1hV
 JjZyh7Ck2xSiWXRk+EmZBhM6AYMkbhfeUPdcnOuLuyfUlyHSFTEjDQvfqu+KDGpOLmE3OOZbNroH
 1WfloOsanLVNhKjUYdmvNumc+Yf4DhRDlXQmrZ2DJPRQcYaZSNj6jAuPTheFl6hgA83hNFPPtB11
 qfTV+fRHZQwo46wPe95wxMsm14JPELWmTcmNmRR1/lssZRcoSlKI/PihGi/ZLfK2s+gDCe90kivG
 liDiqkzd62l42AcVF/ki4MpsDp+VPXw9PR0g+vZx75bnKJUcGP9n88umsNmzE4bxcHTvtP8Fy6Wz
 xNLV0L3kbMVsCrfy0OQWrwlr/cVcXrXqpoJ1nzNRl4BTiJGiYDBN66M3CmD6YrjEWv47cPWM/BqX
 li3Y2IczAC2id6SyVBZxT+foO/VvNmOpu3UoA90d8ekhzVDqBKExgV6ZKYAxAIF3HbeeHxZb2Tn6
 g+29GYafOsvE9ShLN0FLoKRwCkoccVvlwRf811a8Mphl7Nsr2J/VrhJpWlS4CsvUkRFjVl0UkR0P
 IuLjS9KkhlHvjRNi9IbrCREG1vJy8pJraK0HopwcdENuRqMtxJwjQYNHlSC8yEjIMC2CmnlCwBwj
 j3riQVlzSWfEkDz4RCKVzMw8gDlKE3CNveVSLuaWi/GDzzRn/5pTkuSPxqNO2wVw8Wbu3Ilk16VB
 bSdu1DWCXJJlhiFqJVVNbE1OpjLyueJe3hU8ZlimgH4pfQ3rFSuogSnXbkfmocc1vUb8bAF+jCBC
 aX/UAUyK8eVwB4YvkOSUCSbs3avpmYOvDr0O7KlzyqxGEmaKL+A6xeTlgiPpnythnurd3FgWj1cE
 +Kw/0+MMDvRV9UN2VOX5i98Bn4ooqI
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
To: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Date: Wed,  4 Jun 2025 14:48:43 +0800
X-OQ-MSGID: <20250604064842.3129343-2-eadavis@qq.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <683eb35e.a00a0220.d8eae.0062.GAE@google.com>
References: <683eb35e.a00a0220.d8eae.0062.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The reproducer builds a corrupted file on disk with a
 negative
 i_size value. Add a check when opening this file to avoid subsequent operation
 failures. Reported-by:
 https://syzkaller.appspot.com/bug?extid=630f6d40b3ccabc8e96e
 Tested-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
 Signed-off-by: Edward Adam Davis --- fs/jfs/file.c | 3 ++ [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.240 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.240 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1uMi96-0008Cb-1Q
Subject: [Jfs-discussion] [PATCH] jfs: Regular file curruption check
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

The reproducer builds a corrupted file on disk with a negative i_size value.
Add a check when opening this file to avoid subsequent operation failures.

Reported-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=630f6d40b3ccabc8e96e
Tested-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/file.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/file.c b/fs/jfs/file.c
index 01b6912e60f8..742cadd1f37e 100644
--- a/fs/jfs/file.c
+++ b/fs/jfs/file.c
@@ -44,6 +44,9 @@ static int jfs_open(struct inode *inode, struct file *file)
 {
 	int rc;
 
+	if (S_ISREG(inode->i_mode) && inode->i_size < 0)
+		return -EIO;
+
 	if ((rc = dquot_file_open(inode, file)))
 		return rc;
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
