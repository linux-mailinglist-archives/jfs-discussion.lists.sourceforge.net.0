Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECF47D6174
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Oct 2023 08:10:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qvX5A-0003PA-5k;
	Wed, 25 Oct 2023 06:09:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qvX55-0003P3-VS
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Oct 2023 06:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DOzMC9JnINWc5MYbwZ7TC8/K6W3nb2Ih949g1iEUhFo=; b=hCQqs5THzAFN/lBk3bJxijQ3ZX
 f/6rLVXlJLzUd6Oo8/ipwj+obtAn/aDsZs8XS97erM+4BSoWzRrZGTquXht4m1lGKxYEXCcEF1BzN
 W2FogFkzsfczbhkdUF9VGTdEr80HEnxAIiV2An7cOCN4vInkBArKy3A+exT7aFx6B1mo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DOzMC9JnINWc5MYbwZ7TC8/K6W3nb2Ih949g1iEUhFo=; b=i
 V4sNv+FGdpK2ypJmJEepNZYz2hUnpgKGiP4cDDMt2eRP2kTAOrVL6eo0yywIeJt3W+zdRrJHaVDNO
 DBA8ugdk6Me9PreSPzzTBPAqKLMAta+dLskspu4y88PMZ7otnlbAO4lV9O53s6WbxccFt1XmsGqtw
 DglUkpLBr0WGqynY=;
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qvX4y-0003eS-9Q for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Oct 2023 06:09:25 +0000
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-1cac80292aeso33707645ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 24 Oct 2023 23:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698214154; x=1698818954; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=DOzMC9JnINWc5MYbwZ7TC8/K6W3nb2Ih949g1iEUhFo=;
 b=A4L043rYXBX3l6ZB3/ekXU5EoinxR/cPcXIV6DF212pSMao4RdO7y3gApmVGB0LHGy
 YnZEswssS67urnen/jQ1AwCOHg4lmemzV8hJwYmCOc7YxlVkYIG1f0K6YJMhMRDOsdd8
 a8x0ZwU5dDu1JGlOKNXlmcu/P5jHFcRI/rK3k5/6dwwxzDFmMpp0gEzz6ESaxtGTO62V
 5B2zVkh6c21ktDreWdoe5HskDy6VByAXsNS1fTTw3+nqAjeC//yMsTOmMUNnR4KuGHel
 hPEJ46/7cwp7l/9oLFbqr3pfic5B25P/q6+x+4cOA/WP0SSIKfzKJfyj2OAYPb8pxGwl
 8Mrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698214154; x=1698818954;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DOzMC9JnINWc5MYbwZ7TC8/K6W3nb2Ih949g1iEUhFo=;
 b=ELGm6GX970Rlj0IUR8l38uNwWMOPh0/jL6jIVLoeZpjdUUYpn7dj5mnlqP/L++jJj2
 y1lsq0HUbmjQiy3ETM8acgwuUAKeo3CPYUA6/2oDzM9b8tHsrPjeZMbVW/xog2dATZyh
 mDd24lHnX/DgpGDJmZht7XxUDNhZio51YEf6ef+GGkCVby8XJksHHY8ayxnZxqQTHHBJ
 vKqssVtLD3cxTwrtT5Ytz0+z2euNfO1EDFMnf/DGuqrPuehMkUCqRLU0msN1bDqn8vVN
 Ji3DKSQ26ZisnNlcbDnNXVwpErSdm/LK2wWCW6pQ/vfMPUixu61wUm7/2knmFjH+dp7J
 VyxA==
X-Gm-Message-State: AOJu0YxUuSd93mgeqvW0GZTGUkMlzqLeXcuhAD64zxj2lHW6/EGWoLK6
 lj1oEGUZ9bCRhJdCAO9rMHU=
X-Google-Smtp-Source: AGHT+IEaeAcoCGe4BhTpz5eV1Ol/6pw+vtWHIt90lHzvDh2Llq6p722EYAJEY6FXVXxugtYLDKt2Kw==
X-Received: by 2002:a17:902:c404:b0:1c7:8345:f377 with SMTP id
 k4-20020a170902c40400b001c78345f377mr15172079plk.29.1698214154398; 
 Tue, 24 Oct 2023 23:09:14 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.173])
 by smtp.gmail.com with ESMTPSA id
 x4-20020a170902ea8400b001c723d6c410sm8380067plb.16.2023.10.24.23.09.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 23:09:14 -0700 (PDT)
To: dan.carpenter@linaro.org,
	dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Wed, 25 Oct 2023 11:39:07 +0530
Message-Id: <20231025060907.115675-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently while searching for current page in the sorted
 entry
 table of the page there is a out of bound access. Added a bound check to
 fix the error. Reported-by: kernel test robot Reported-by: Dan Carpenter
 Closes:
 Signed-off-by: Manas Ghandat --- V1 -> V2 : Removed redundant check on stbl
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qvX4y-0003eS-9Q
Subject: [Jfs-discussion] [PATCH-v2] jfs: fix slab-out-of-bounds Read in
 dtSearch
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Manas Ghandat <ghandatmanas@gmail.com>, lkp@intel.com,
 linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Linux-kernel-mentees@lists.linuxfoundation.org, oe-kbuild@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently while searching for current page in the sorted entry table
of the page there is a out of bound access. Added a bound check to fix
the error.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202310241724.Ed02yUz9-lkp@intel.com/
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
V1 -> V2 : Removed redundant check on stbl

 fs/jfs/jfs_dtree.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 92b7c533407c..cf67d32d5b7f 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -633,6 +633,9 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
 		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
 			index = base + (lim >> 1);
 
+			if (stbl[index] < 0)
+				goto out;
+
 			if (p->header.flag & BT_LEAF) {
 				/* uppercase leaf name to compare */
 				cmp =
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
