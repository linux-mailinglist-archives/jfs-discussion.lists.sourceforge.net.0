Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9B799881A
	for <lists+jfs-discussion@lfdr.de>; Thu, 10 Oct 2024 15:44:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sytSx-0008Ao-LD;
	Thu, 10 Oct 2024 13:44:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1sytSn-0008Aa-JC
 for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Oct 2024 13:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NZYsBI4rHRPGslnn0OIAOPnwZIxsjJhLtfW4Z5UU62w=; b=ZmaACXwISVpljSXF2EzdwagJcv
 KuCn7x7+UrtMdmxZGW/VwL4cQrxrE8Kcg0ss12jmjk/TURDiIGb/IrTIexpAuKe18BEpdwSsvSOHK
 H1J3UIrYVCvMw0coX4rcAln5LcTD1maqrzqG8LaXOAivvvJgu/Bz9PhL4ZYbBJGbm8eM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NZYsBI4rHRPGslnn0OIAOPnwZIxsjJhLtfW4Z5UU62w=; b=J
 /Kf1AiBIVJdHMDvqSIgQJ9t96yUYgRYJ8XNmm5+Ey0/pjs43EuV5qXL8GuH7IK0QRBw4FievCTSVw
 4RkrUyOmZig4BK2EZX5HtWFa8oJLP7bmPK3AV5qTBzLSttIB44zShP0wSZO/MHa/mfTMmw8rSft4F
 cxo1Uu571odj+dNY=;
Received: from mail-pf1-f173.google.com ([209.85.210.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sytSl-00079c-AS for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Oct 2024 13:44:21 +0000
Received: by mail-pf1-f173.google.com with SMTP id
 d2e1a72fcca58-71e01eff831so712459b3a.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 10 Oct 2024 06:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728567849; x=1729172649; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NZYsBI4rHRPGslnn0OIAOPnwZIxsjJhLtfW4Z5UU62w=;
 b=jvckQwSSK8kySoeNX9lb/xpOed6f1YJ7WB1n+wJlooE5Rk3x83WqnbgwHZZwc9WUfS
 vFWKCqTzm9g9lwqarPTcUTB0F19nV0yLyB/g5ectnAjyzDw8ZEjqJjt6M677Z8AyWlCB
 CkaRMfhmRSpx9aZMQuHQaBYAhkVllfBu8sqsT1EHLWh8Kjcot6cx7W4ZQs9axRA/GU85
 2mj5eBoYoxC1lj55hXMSKl+9dgPPHjp7JZfhwwtE3dG7UE2LtBZSOkcMNqetxBw7hTq0
 ot9k1duQKjjQ7CYfHs35tBFVCVnfV7bIwCxMFougKKy5zkiwrBxqte5MhoWs8aGA07Z+
 GL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728567849; x=1729172649;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NZYsBI4rHRPGslnn0OIAOPnwZIxsjJhLtfW4Z5UU62w=;
 b=R1cD9iplERQLGydBC5Sly1hHt34bCL2NtCJP3xLvabfQc8mIS+y3qqKhRN3Iq8dR2j
 m+iJzYlTe2Xb9V2hGF4sZcncL7DliYUsfa2t47hB7eNSYCvGb62dKY5m9ll/IDDEvDH6
 Pgchxp8rvlyx3TlChO6GwxzdF9XBbdglE/3tmimKVA8vWa2UsYdYLlcD/qyFZCXXZMyF
 Pt3k02/vcZLSAspmGgXJUOGFt2ypoRbGLg/qjErwNSBzpSOqCbw0xBZDtfi7pouVMm4Z
 7ipLJAbaR7YKqzJQ9rJjBDnwZzDsBfBbrPPtvwFhBMbVRqzoz6YK54xTCQFTZeF99nJK
 raPg==
X-Gm-Message-State: AOJu0YzMDPeUS1gUDr/vUtQtJPQOC47HyUl+SlzrzWkITFGm+4wQ/KpT
 yop2gQ6eN+lYkofYSDAQscB9QvrrLGqcs5BMaEzZKvmWJmKv+p4d
X-Google-Smtp-Source: AGHT+IFDRhRD26iK9dbGob0ICijU5Wrp2L8RYyhXI1JN9HjKNoxD2M9E1WTsM6tZ6EDS/EKycS/+Og==
X-Received: by 2002:a05:6a00:cc2:b0:71e:a3:935b with SMTP id
 d2e1a72fcca58-71e1dbcab26mr10435507b3a.25.1728567848504; 
 Thu, 10 Oct 2024 06:44:08 -0700 (PDT)
Received: from dell-xps.. ([2405:201:3036:a902:cb38:efef:96cc:3acf])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71e2a9e95f9sm1034508b3a.39.2024.10.10.06.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2024 06:44:08 -0700 (PDT)
To: shaggy@kernel.org, osmtendev@gmail.com, ghandatmanas@gmail.com,
 eadavis@qq.com, ghanshyam1898@gmail.com
Date: Thu, 10 Oct 2024 19:13:51 +0530
Message-Id: <20241010134351.1884580-1-ghanshyam1898@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The value of p->header.freelist can be less than zero which
 causes an error in dtInsertEntry. Added a check in dtInsert to address it.
 Reported-by: https://syzkaller.appspot.com/bug?extid=5f7f0caf9979e9d09ff8
 Signed-off-by: Ghanshyam Agrawal --- fs/jfs/jfs_dtree.c | 2 +- 1 file changed, 
 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.173 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghanshyam1898[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ghanshyam1898[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sytSl-00079c-AS
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dtInsertEntry
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
From: Ghanshyam Agrawal via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The value of p->header.freelist can be less than zero which
causes an error in dtInsertEntry. Added a check in dtInsert
to address it.

Reported-by: syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=5f7f0caf9979e9d09ff8
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
---
 fs/jfs/jfs_dtree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 5d3127ca68a4..51bb3e14551b 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -834,7 +834,7 @@ int dtInsert(tid_t tid, struct inode *ip,
 	 * the full page.
 	 */
 	DT_GETSEARCH(ip, btstack->top, bn, mp, p, index);
-	if (p->header.freelist == 0)
+	if (p->header.freelist <= 0)
 		return -EINVAL;
 
 	/*
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
