Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD72D03778
	for <lists+jfs-discussion@lfdr.de>; Thu, 08 Jan 2026 15:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gz7UG8r7q31M2Yrc3CMOnINZA2JN2Lj6LuwagsOCevA=; b=ircvzdB8khm6OVhK1/Cw/tydmf
	hy+Av+cFalXF2/1rFPFE+6EE/rBH7GZ0qvf5KaDdtTW/J/2WPa7GW3RjUjgP5CArPGyM7CSH+hMJR
	xAZ+AI0eo5QLby7E7rpcxdda2JuKXEAOSST94wrcparrT14TAo77CCOsuDh1tbTJA3tE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vdrGz-0000k8-5Y;
	Thu, 08 Jan 2026 14:46:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1vdrGw-0000jz-Oo
 for jfs-discussion@lists.sourceforge.net;
 Thu, 08 Jan 2026 14:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DEYlDv7IlB4kOzLSK9r3FPpqIBINDBa7y+bEY8dfrJA=; b=L4Z3l4tMgnCHZRRVwCIj7XAQmQ
 VNmi6g7PXdO9fIuOrq12E1nhOPaEAxnZYdPLvstJiR0DvVtG8oNRx9VLRFovqjcXzi7PiQ4HMkxVB
 3l1Fq3hI+i5AkVzDm0pKcSJsS2pht6Y/4ANC/IRLIKEn36n883ZfV2YToMnx3IHDV3wI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DEYlDv7IlB4kOzLSK9r3FPpqIBINDBa7y+bEY8dfrJA=; b=SobpLd5AMQkPvqBHqBJSaH9Jpt
 w5LvVXEJKzM4iprENgJTXDRmtqLkvCDkHLoFKVlImN/xGb/+SOBwn89+PqmyoX1lC24Xtbo9tYV+y
 uPk3wJIaW7C/ABwdFkQUr9NqLyqO7l7BwPadi2Rfn79uZR9oog7Veh8UTTMIvw+7uiQA=;
Received: from out162-62-57-210.mail.qq.com ([162.62.57.210])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vdrGu-0001X7-MR for jfs-discussion@lists.sourceforge.net;
 Thu, 08 Jan 2026 14:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1767883545; bh=DEYlDv7IlB4kOzLSK9r3FPpqIBINDBa7y+bEY8dfrJA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JzfVZ5MPJszlk9D3RFsWARG5hXFyDJHDR/MVSyHHcwrF4dmFsup56Db8atiHqDXdd
 e1n8rHXBhiBUIWFuyZGEKHJ0Rzu1+FXNwgRBMfS8sVx44lycQaj62hHU+WufRJKu7m
 bTYUcKTb4zVRdBM7wbvkO5GoIpMaXdWvtKP1aY38=
Received: from lxu-ped-host.. ([114.244.57.24])
 by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
 id B6B95C9E; Thu, 08 Jan 2026 22:45:43 +0800
X-QQ-mid: xmsmtpt1767883543tk2uqk6jr
Message-ID: <tencent_5E4F8F8DEFA5930D909222DDE35DCE192A07@qq.com>
X-QQ-XMAILINFO: NPa98HB0c72NwmRa8x9ohsclaMm7BNmj2FPq0WGYd89SttfO7bG+zF7xnC26Mu
 3u4yhkYQEZ7Da9fInp5TWVb8ni8BGCsF1xjzEU8ZRw75F/U2HL8t+Jv9WH4w8L2IwmzndEF5OyyC
 0V9gsH3b0H+VpB5RaUvaZHpPP3ELAy9ODg8sYOTlCU351bFthhLZ3ttXmusZsJpAkYJHCR8gAp6U
 mfkopzSWLzag9pfsyeuxJBWExFxFkRgV58m5H3iba3ggM0bsU7pdL9/ZVwi6dHng2InJxwjGAnkq
 8mQHYpFC2V9yh/Y+/3clfk2vh/SPrbKtiGtqLli8Bc01o/JsQhkHEXSZUjpYwjmdk+HgQ35XsC4b
 NIqAui8EIzekKWdn2s99pcyrX/+baBauILHwCj8ytsM8sTDGqOpE68zJjfaypOGvKsUslN8AEf7K
 Uk2NZs8ljiKYDqXsAvFBaf8DUv6eAQHZ/IC4DR/m/KOTzZ0Vb2NjmwCtCYL24MSWCS8tZ3uYMqHL
 +gHm4zJ8xjBkF1voaSHqUKvrQWWlxI2uTGxv5RwPUyUY8Qfm4gWvUXIsKqwWqfiQca3Zkrr34WZH
 iIOT7Ec32YrWdTLC4E59yz7ySeNopWDTRzfhwqWCCHuV1jEtWQntPO44iMHhHuw4LVO3h6JeFC1d
 7zTrXVOQmMWGlC3GrzVGq5Ti0ntr0qnvWR6863bWWpUtPHx8l2yQfRY6MYh+eG1TxswhfC0l8WSS
 eUrk6pkhWHqM+D4nZPqdKcPBiSm6Omqa//FRH15lB1tPcEjqINizPKUfIU74cchK7xSCD0zjjwV4
 c1F125rSiWZpMsiZ4Qm7vhhplnFb4zDX68StWCr1RamPq/XGzdTFRHV3A3vJTYtmWZn1VjXxm4Hm
 JVCN8vbpdUaz4vy988yuCUd/LxEVp3p2TvPKw0tpq3elswlpf/F9hTII87MBSG20i3FarP+Ck/Ic
 5M00BFc4YVoBNzJYODJZudqXfI2/giBzdJRlMYTYgJL4dblyF6WLOHxJvMyNq3OYUFZHjPusG3GC
 COcIZi2w==
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
To: syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com
Date: Thu,  8 Jan 2026 22:45:44 +0800
X-OQ-MSGID: <20260108144543.518312-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <695faa63.050a0220.1c677c.039a.GAE@google.com>
References: <695faa63.050a0220.1c677c.039a.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The initial value of x is ti, and there is a potential risk
 that the value of ti might equal max_size. The existing boundary checks have
 been improved to prevent the out-of-bounds (OOB) issue [1] repo [...] 
 Content analysis details:   (3.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: qq.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [eadavis(at)qq.com]
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP addr
 1)
X-Headers-End: 1vdrGu-0001X7-MR
Subject: [Jfs-discussion] [PATCH] jfs: fix oob in dbFindLeaf
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

The initial value of x is ti, and there is a potential risk that the
value of ti might equal max_size.  The existing boundary checks have
been improved to prevent the out-of-bounds (OOB) issue [1] reported
by syzbot.

[1]
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2976:16
index 1365 is out of range for type 's8[1365]' (aka 'signed char[1365]')
Call Trace:
 dbFindLeaf+0x308/0x520 fs/jfs/jfs_dmap.c:2976
 dbFindCtl+0x267/0x520 fs/jfs/jfs_dmap.c:1717
 dbAllocAny fs/jfs/jfs_dmap.c:1527 [inline]

Reported-by: syzbot+1afe7ef2d0062e19eeb3@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=1afe7ef2d0062e19eeb3
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699cd7c8..18a7dc58f289 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2971,7 +2971,7 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
 			/* sufficient free space found.  move to the next
 			 * level (or quit if this is the last level).
 			 */
-			if (x + n > max_size)
+			if (x + n >= max_size)
 				return -ENOSPC;
 			if (l2nb <= tp->dmt_stree[x + n])
 				break;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
