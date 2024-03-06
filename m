Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1523987381F
	for <lists+jfs-discussion@lfdr.de>; Wed,  6 Mar 2024 14:51:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rhrfP-0003KN-NV;
	Wed, 06 Mar 2024 13:50:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mish.uxin2012@yandex.ru>) id 1rhrfN-0003K5-KK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 06 Mar 2024 13:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=si9CmxfbTTi+fzS7ZgV1gg2/IENW5eLorkGc5P/t0aU=; b=RtRul3QwIdH8YsHzC4o/S8oT9V
 4ZmXoVsui9fimucMPPbYsaTm1IeIGzR5jyti3hP8/p5tmuSCn+ywg3I7+33mksGnWJNH1z3ybSRVS
 m3LHTFCSflhemD5JX27UnaPS/q6ZDv67ztXcSpVrr1ETN5CFP2dYdRT7lMEtINwqKUI0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=si9CmxfbTTi+fzS7ZgV1gg2/IENW5eLorkGc5P/t0aU=; b=N
 pesaCyN7pbjQSEKVJ1DKuwdO2pRJOJJUVZutSdObN9Sit7jgTxAMLXw1gGLIUFY0A93Owa3qsyN2u
 /cj/60SMrBX1GoVRZ8dzffiLiuPrK5qr5tRMJgTKRf1PBryeNk28SLFzeXktsYzcL9l737C9de323
 BQLtzeU6vMlg/lLQ=;
Received: from forward102b.mail.yandex.net ([178.154.239.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhrfF-0002lj-HZ for jfs-discussion@lists.sourceforge.net;
 Wed, 06 Mar 2024 13:50:41 +0000
Received: from mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net
 [IPv6:2a02:6b8:c12:601e:0:640:ac7:0])
 by forward102b.mail.yandex.net (Yandex) with ESMTPS id E70F16090D;
 Wed,  6 Mar 2024 16:50:26 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id Bogo8U46U0U0-5x8x78mU; 
 Wed, 06 Mar 2024 16:50:25 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1709733025; bh=si9CmxfbTTi+fzS7ZgV1gg2/IENW5eLorkGc5P/t0aU=;
 h=Message-Id:Date:Cc:Subject:To:From;
 b=D1VN1cyuNsIj1u2ombhbQGZLwl6NLZWBoBjvpgF+oBQ0bDbD0i8wrI8SljgXvkQyj
 2Vba3U5tDUZqR7YBvxEzfLgA3EL9TI32Roii1o59KBOcyR+ZHoPEuG4d7vhHNF5CDf
 aDXNkMROmIdi0tuSn0/SyooTY7XBsmqJ6li6omLw=
Authentication-Results: mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Jan Kara <jack@suse.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed,  6 Mar 2024 16:50:10 +0300
Message-Id: <20240306135010.9250-1-mish.uxin2012@yandex.ru>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fuzzing of 5.10 stable branch reports a slab-out-of-bounds
 error in ata_scsi_pass_thru. The error is fixed in 5.18 by commit
 ce70fd9a551af7424a7dace2a1ba05a7de8eae27.
 Backporting this commit would require significant changes to the code so
 it is bettter to use a simple fix for that parti [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.154.239.149 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mish.uxin2012[at]yandex.ru]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mish.uxin2012[at]yandex.ru]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhrfF-0002lj-HZ
Subject: [Jfs-discussion] [PATCH 5.10/5.15] scsi: add a length check for
 VARIABLE_LENGTH_CMD commands
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
From: Mikhail Ukhin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Mikhail Ukhin <mish.uxin2012@yandex.ru>
Cc: jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 Pavel Koshutin <koshutin.pavel@yandex.ru>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Artem Sadovnikov <ancowi69@gmail.com>,
 Mikhail Ukhin <mish.uxin2012@yandex.ru>, Mikhail Ivanov <iwanov-23@bk.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Fuzzing of 5.10 stable branch reports a slab-out-of-bounds error in
ata_scsi_pass_thru.

The error is fixed in 5.18 by commit
ce70fd9a551af7424a7dace2a1ba05a7de8eae27.
Backporting this commit would require significant changes to the code so
it is bettter to use a simple fix for that particular error.

The problem is that the length of the received SCSI command is not
validated if scsi_op == VARIABLE_LENGTH_CMD. It can lead to out-of-bounds
reading if the user sends a request with SCSI command of length less than
32.

Found by Linux Verification Center (linuxtesting.org) with Syzkaller.

Signed-off-by: Artem Sadovnikov <ancowi69@gmail.com>
Signed-off-by: Mikhail Ivanov <iwanov-23@bk.ru>
---
 drivers/ata/libata-scsi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ata/libata-scsi.c b/drivers/ata/libata-scsi.c
index dfa090ccd21c..77589e911d3d 100644
--- a/drivers/ata/libata-scsi.c
+++ b/drivers/ata/libata-scsi.c
@@ -4065,6 +4065,9 @@ int __ata_scsi_queuecmd(struct scsi_cmnd *scmd, struct ata_device *dev)
 
 	if (unlikely(!scmd->cmd_len))
 		goto bad_cdb_len;
+
+	if (scsi_op == VARIABLE_LENGTH_CMD && scmd->cmd_len < 32)
+		goto bad_cdb_len;
 
 	if (dev->class == ATA_DEV_ATA || dev->class == ATA_DEV_ZAC) {
 		if (unlikely(scmd->cmd_len > dev->cdb_len))
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
