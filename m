Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C6B7E4474
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 Nov 2023 16:53:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1r0OO8-0003nB-4p;
	Tue, 07 Nov 2023 15:53:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1r0OO7-0003n1-Cl
 for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lBPLYS2dAttxVwNz267WuuF334TftPFh+Z2KStNePfw=; b=k9YpLRfqHFnKxViezgl870W9AG
 cjqO8XcLcz9R4MOy18VVJd0e9OqvzrWMLB71sggHxB2JUdeWrZoCfCbfPF0P9iDCWHw7xgcqJFqxj
 X9mHkSjLo6tu9h7oIe+SCEaxlR+TQIqM4iG/FxncajxDNeYcEt2N3S5XEYSzB1NVZX4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lBPLYS2dAttxVwNz267WuuF334TftPFh+Z2KStNePfw=; b=bXoWjAJb+7yvEZ/JG7l5Wv6/Zu
 Tx7EuepC/ug1hqHzzxS+Vq+ojF+t//3SM9aU4q/TVPzHnOnfEUuwz5hrIPc1XJAbYqqwUoPg3ZA9a
 z9O6sZPH8WLEbDOtYGaxkLGBLpUdWPyAzbM3uwuEEvH/GxjIR1tTU7biyeWABzfpkQGs=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0OO6-00061y-Jr for jfs-discussion@lists.sourceforge.net;
 Tue, 07 Nov 2023 15:53:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C54F1CE0F60;
 Tue,  7 Nov 2023 15:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88E94C433CB;
 Tue,  7 Nov 2023 15:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699372383;
 bh=0bwtTsVDxSCW5FTK2U8iuhN4M3Nv3/0UJrXwC5+g4Qo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IXhdCRQCxxnGZWqEvRbOY3iEfAymiFRwL8e1NJrGRgnRWfaEEamZYIPMuY+9rYt76
 sOdBYso4H8uZxftFUSK60DBt7m0BROvz80hGCwDM64ZUJsPOVrkdddgbZueO493hJq
 R+GonTnavNDfcDgVJmUOUdihA7jzN1h/WLqYUI6Z4nF0tRiD4Pikw7Lkzy7yQFFTZH
 BPOfZaMZQq9EchG31jmxrhwNNP20PzCUrxZ1nYJONJVkQ/CsUY3a84awz2Ukevh3bg
 7ultyk78CxysKBqlEid3DQbJO3T2Itx/8+YBGm1CItIl/uvHrUED2SYP0SzAsZV4co
 OKLua72Jus74g==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  7 Nov 2023 10:52:24 -0500
Message-ID: <20231107155249.3768098-5-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107155249.3768098-1-sashal@kernel.org>
References: <20231107155249.3768098-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.199
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Juntong Deng <juntong.deng@outlook.com> [ Upstream
 commit
 64933ab7b04881c6c18b21ff206c12278341c72e ] Both db_maxag and db_agpref are
 used as the index of the db_agfree array, but there is currently no validity
 check for db_maxag and db_agpref, which can lead to errors. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0OO6-00061y-Jr
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.10 05/16] fs/jfs: Add validity
 check for db_maxag and db_agpref
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, Juntong Deng <juntong.deng@outlook.com>,
 wonguk.lee1023@gmail.com, ghandatmanas@gmail.com, shaggy@kernel.org,
 syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com, yogi.kernel@gmail.com,
 jfs-discussion@lists.sourceforge.net, liushixin2@huawei.com,
 andrew.kanner@gmail.com, code@siddh.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Juntong Deng <juntong.deng@outlook.com>

[ Upstream commit 64933ab7b04881c6c18b21ff206c12278341c72e ]

Both db_maxag and db_agpref are used as the index of the
db_agfree array, but there is currently no validity check for
db_maxag and db_agpref, which can lead to errors.

The following is related bug reported by Syzbot:

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:639:20
index 7936 is out of range for type 'atomic_t[128]'

Add checking that the values of db_maxag and db_agpref are valid
indexes for the db_agfree array.

Reported-by: syzbot+38e876a8aa44b7115c76@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=38e876a8aa44b7115c76
Signed-off-by: Juntong Deng <juntong.deng@outlook.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 06dda2c7a6e24..2ccb52371ceb5 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -195,6 +195,12 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
 	bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
 	bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
+	if (bmp->db_maxag >= MAXAG || bmp->db_maxag < 0 ||
+		bmp->db_agpref >= MAXAG || bmp->db_agpref < 0) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
 	bmp->db_agheight = le32_to_cpu(dbmp_le->dn_agheight);
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
-- 
2.42.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
