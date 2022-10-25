Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB78E60D062
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Oct 2022 17:22:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1onLkc-0006vr-Le;
	Tue, 25 Oct 2022 15:21:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wuhoipok@gmail.com>) id 1onLkV-0006vf-GI
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Oct 2022 15:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uPoTu9GpF3r7JCGLoYLEXJRrWXzP036fJar0pcMsbUs=; b=Z+m19NuStQ9qGduJnSJgwZzNy4
 RDUNUWqPBZdMl0yllpvzcGwUWtePCDYFL7Y2rIh2Q3rRpMpqrPBXW9pYTVio2zIpnqx2Ojb5iYaHW
 zSkwIL3cr+lMLvYzVrnz6ac5M0UFeU1zwqzOmWsSwuCdKA9Y7DSgZp9kekjerLOssAwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uPoTu9GpF3r7JCGLoYLEXJRrWXzP036fJar0pcMsbUs=; b=Z
 qJUlOu97aYxM+gaj1F/zPEtet8eLaLbI300GoXHaQuMmGquTGVO5z9sUAAJONWqKZApnkmNNL9KEc
 zQyqmRd/RxFT15nopfzQDqgsCGDI9GUGKgrkZmH0pf0DIM390lbO23F+SBmDtBE40riy92nMfT4bC
 39EilGvRm5EVBElw=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1onLkR-00H8Ea-AX for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Oct 2022 15:21:51 +0000
Received: by mail-pl1-f171.google.com with SMTP id f23so11238188plr.6
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Oct 2022 08:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uPoTu9GpF3r7JCGLoYLEXJRrWXzP036fJar0pcMsbUs=;
 b=OJ+JNHV3wkyvUa+VFpIWGkJAgUsruutAWy8nA4OikHySUZMhON/lKAQV2jEevO+N73
 BlsXjVUyTOBI4Wip/QpCWcFBhkM5KW9oe+lcoeMDxVa1G+dvDvDAMcgB7m+KJuIgKU1u
 knldjhoyXh+EyT0VyiuWGEj3bECUotQIEioSeUpun+7dbiYTZXxxsJKNFd6P/J9ZIwGX
 UJpVGtku3dcpUMQwE44auMweCygVFAWssDmpKWMLUFVB3jW3LoIhJQc5jY9Nzk3+jOPb
 HXZWt3DDReClW5oeIDFnhDHClDKu6c54mzJsJJsjfOBL/p6i3GiNEg+8Ul/zr/pgZCw2
 0Akg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uPoTu9GpF3r7JCGLoYLEXJRrWXzP036fJar0pcMsbUs=;
 b=bvj0Rs3rl03r0IomjYmuPfOPsbX/vdOoh8zD5pvMW9g4L44y/P22bpolACnsZ5mZ9Y
 tW9/16gvKn0xw3uy/pkZWjWvYgQclretYyhPpvtj6CTwW7pb4yX0sVoTfizlIGgEHOF7
 ztXo1Wa6mjSgVk4RlaJhlTm1KCSshihCYPWC7nl7zIjRCtV/3+J4MUy+m1Apv2AxK1/w
 883TA/Jaajp7i5u5eQJvpGqoC8aeegyli0PmPGN63ZM9VEFJTUKMy+YHCgeSEZ4nT9tr
 Iioz4EwLVJA6QgCQkJ1feZ0avbFkxhrwDLVeCGoy1gCtcT+O0OScaqVn3xgx7HYQpIt9
 AT3A==
X-Gm-Message-State: ACrzQf0vHDUCdnqimXQvktB2SMApbIurZZeo7KYH3GMHug8WFla8MbuU
 3Xr4yDkiwkK+ZLz+4Fwvlr4=
X-Google-Smtp-Source: AMsMyM5KqM34tFEIZCaV2VzjvgyKT25/4pgbQ8lef3I/zzQE5Bg+nu+8iJZKiWDTEqUpSxw/vvqRMw==
X-Received: by 2002:a17:903:41ce:b0:182:a32f:4dde with SMTP id
 u14-20020a17090341ce00b00182a32f4ddemr38435859ple.47.1666711301774; 
 Tue, 25 Oct 2022 08:21:41 -0700 (PDT)
Received: from localhost.localdomain (124244014158.ctinets.com.
 [124.244.14.158]) by smtp.gmail.com with ESMTPSA id
 q14-20020a17090311ce00b001754fa42065sm1356022plh.143.2022.10.25.08.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Oct 2022 08:21:41 -0700 (PDT)
From: Hoi Pok Wu <wuhoipok@gmail.com>
To: shaggy@kernel.org
Date: Tue, 25 Oct 2022 23:20:45 +0800
Message-Id: <20221025152045.343650-1-wuhoipok@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This should be applied to most URSAN bugs found recently by
 syzbot, by guarding the dbMount. As syzbot feeding rubbish into the bmap
 descriptor. Signed-off-by: Hoi Pok Wu --- V1->2: guarding the corrupted data
 structure from dbMount instead fs/jfs/jfs_dmap.c | 5 +++++ 1 file changed,
 5 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wuhoipok[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
X-Headers-End: 1onLkR-00H8Ea-AX
Subject: [Jfs-discussion] [PATCH V2] fs: jfs: fix shift-out-of-bounds in
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

This should be applied to most URSAN bugs found recently by syzbot,
by guarding the dbMount. As syzbot feeding rubbish into the bmap
descriptor.

Signed-off-by: Hoi Pok Wu <wuhoipok@gmail.com>
---
V1->2: guarding the corrupted data structure from dbMount instead
 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index e1cbfbb60303..765838578a72 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -198,6 +198,11 @@ int dbMount(struct inode *ipbmap)
 		goto err_release_metapage;
 	}
 
+	if (((bmp->db_mapsize - 1) >> bmp->db_agl2size) > MAXAG) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	for (i = 0; i < MAXAG; i++)
 		bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
 	bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
-- 
2.38.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
