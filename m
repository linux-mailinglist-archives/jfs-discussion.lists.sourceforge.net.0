Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 455046046E9
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Oct 2022 15:23:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ol92P-0007nL-4v;
	Wed, 19 Oct 2022 13:23:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wuhoipok@gmail.com>) id 1ol5YN-0001Gq-Eb
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Oct 2022 09:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f59RIjGEwqOu67ef5ZU0jIO2IA5PQ6Gm9Ueoact0TG8=; b=dWw3vaJOkaqIBGSl/qiYQb9PDy
 hUtkIpSYewK5F4Q5hjuR4DwgPfA/bw6vSySbF971f5AEtPgD/cu6zTxamcyc2KDd5NuwD9tZJmFxe
 k4eyH//QxfCLd2v6Gurer3w0Ejrnxq2Mw6HPF3M2e/7Oj3kqn3Oq/GT2KkShAHgcvvkg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f59RIjGEwqOu67ef5ZU0jIO2IA5PQ6Gm9Ueoact0TG8=; b=P
 lQvPvJ3sDClFimqss534rvflEJt1x7xj2DpzG4GVNVFuzqY55lPVcPXK47RxZDvRWnDScxPzXat5Z
 lfKk0eeQMHeUp4x8D7ns8sdR+rUkFeXpm55wMEMoSRiWHwONIa/86JoRoiUbO9Dq/5X6k9BP18HS5
 X5R8vT+Zo1mQ/RpQ=;
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ol5YG-009TDo-L0 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Oct 2022 09:39:59 +0000
Received: by mail-pl1-f175.google.com with SMTP id i6so16426941pli.12
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Oct 2022 02:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=f59RIjGEwqOu67ef5ZU0jIO2IA5PQ6Gm9Ueoact0TG8=;
 b=bqRSRL8HLb+wNogKF5itSZhUrrM00dqcwkhn9W8gNWQ5In1LjWHJBmXjih9KVRyhmc
 Z5rm6JOPGNPHS9abKoxzZbhqKkuG1dS8MNCtVnKd/GoVhGxSifgIesc4J/egfw2wJKVu
 1mInCg2QGiFfYqSLu9eNlLFGztmcL+GWQi+Zw9ggWl39E0SVLgyYmtqrWGu15DOdgvae
 YMTOq0uPIgVyWINb7OzW+Y6Js13TiFMH5UBzO4NDLfJ2XjBsXkkdQnS2eVNhWpXICBrb
 V7MEOJ7ufOxgmuw6GDfnW86xizprbpGa/FHGBBp2FGuRZjGl55kambcgx1aVQTRrAAGb
 K5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=f59RIjGEwqOu67ef5ZU0jIO2IA5PQ6Gm9Ueoact0TG8=;
 b=oFljGry0yQnvqODj+t9Vr4chiNk64MD7JEMvzbHYjxHds0C7Y+UwpP0XBZQds+tlfz
 nOKgi1xxGlsz2WW0dUZy8Y/WMBCMxYNt/sDKOpe0RJ9x3ZYz+iNLQ5VXnBS/TiS+kmed
 g5roDCoLdCsys/qqF46OXg64B/u2RGWeOAse+42rbZZyUwsuUbY773ghMfbm0Z1QDSa3
 bdfsiw+hmMcz6wI4nW1UimuGx5jqMNR74asJ/Ia7ijzu+bJpj3sCys7g7/eAIK+cCAa/
 3DRnw54PSo8Ibs506GS1K4b35hpCq1kyJ2ytz4re2se/s0ZfphlRQvVRUZg0Gmv3OR2l
 oXdg==
X-Gm-Message-State: ACrzQf0rFbQDdbFN86ukibDRpsn7Uym2MOR4w8PxLCujwfZTfIH7Y+Sf
 WuEyyJlCEAA6/2h3anY2hWw=
X-Google-Smtp-Source: AMsMyM5fQzzkn024/Xnp1HA6FMegw/A0XgS4TW8OSF1d6zoVF7Ykv1c1HdodUSgSMsHjk8G40tcTXA==
X-Received: by 2002:a17:90b:1c0e:b0:20d:8cc5:23e5 with SMTP id
 oc14-20020a17090b1c0e00b0020d8cc523e5mr8888517pjb.111.1666172387052; 
 Wed, 19 Oct 2022 02:39:47 -0700 (PDT)
Received: from localhost.localdomain (124244014158.ctinets.com.
 [124.244.14.158]) by smtp.gmail.com with ESMTPSA id
 y184-20020a6232c1000000b00562cfc80864sm10895192pfy.36.2022.10.19.02.39.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Oct 2022 02:39:46 -0700 (PDT)
From: Hoi Pok Wu <wuhoipok@gmail.com>
To: shaggy@kernel.org
Date: Wed, 19 Oct 2022 17:38:25 +0800
Message-Id: <20221019093825.339991-1-wuhoipok@gmail.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Bug reported by syzbot, UBSAN: array-index-out-of-bounds in
 dbDiscardAG. Fixed by simply rearranging agno_end smaller than MAXAG. However, 
 I wonder if it is a better idea to return -EINVAL, rejecting [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wuhoipok[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.175 listed in wl.mailspike.net]
X-Headers-End: 1ol5YG-009TDo-L0
X-Mailman-Approved-At: Wed, 19 Oct 2022 13:23:10 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: fix shift-out-of-bounds in
 dbDiscardAG
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
Cc: syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Bug reported by syzbot, UBSAN: array-index-out-of-bounds in dbDiscardAG.
Fixed by simply rearranging agno_end smaller than MAXAG. However, I wonder if it
is a better idea to return -EINVAL, rejecting user input. Thank you.

Reported-by: syzbot+f0e0fcf3cd1047ae60ad@syzkaller.appspotmail.com
Signed-off-by: Hoi Pok Wu <wuhoipok@gmail.com>
---
 fs/jfs/jfs_discard.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
index 575cb2ba74fc..3101eaf3098a 100644
--- a/fs/jfs/jfs_discard.c
+++ b/fs/jfs/jfs_discard.c
@@ -96,6 +96,10 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
 	 */
 	agno = BLKTOAG(start, JFS_SBI(ip->i_sb));
 	agno_end = BLKTOAG(end, JFS_SBI(ip->i_sb));
+
+	if (agno_end >= MAXAG)
+		agno_end = MAXAG - 1;
+
 	while (agno <= agno_end) {
 		trimmed += dbDiscardAG(ip, agno, minlen);
 		agno++;
-- 
2.38.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
