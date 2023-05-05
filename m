Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B0A6F8488
	for <lists+jfs-discussion@lfdr.de>; Fri,  5 May 2023 16:10:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1puw8g-0000j1-Nv;
	Fri, 05 May 2023 14:10:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wonguk.lee1023@gmail.com>) id 1puk7x-0005Pq-Ri
 for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 01:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n0soDqfw6362dujeUcWQ5P8Z55oslCidLxBQzR0OR5g=; b=ghOackFg8vWFBVBsCxmcoFEO3n
 rLDfSUfG6HulUKaf4CoqQUXxdRBe41eCWdZIFK5TD4ytrd9Ypq+x2LZM+g9xHAH7hf16P64MSTnVr
 bwu9s+cb47CG6gLOF2Qs6HKmlO2owtt56819HWRL/aiCEfVZ3BEQ0GrA6Oxifq1gNt3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=n0soDqfw6362dujeUcWQ5P8Z55oslCidLxBQzR0OR5g=; b=Z
 1suipi+JKe6LsPgd2o2YeUNg+HljPAvkTMmuts2uAtjn0Ls2pFt5auVCtzyWWXDG5DTVQJMCBQ8uL
 tfa3b6iF+o1sJtME5bAbQ5R2NqCAGQ7Li0O/dnu0jH+sD/B0Sv+ROM0E0b1M8nThdjW4fIGJKelrJ
 J1fwlKOjDEIywigU=;
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1puk7v-00Eo3n-Bc for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 01:20:54 +0000
Received: by mail-pl1-f174.google.com with SMTP id
 d9443c01a7336-1aad5245571so8093885ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 04 May 2023 18:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683249646; x=1685841646;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=n0soDqfw6362dujeUcWQ5P8Z55oslCidLxBQzR0OR5g=;
 b=TLSSFHC4/+nutVQAyNGbslhe+OJicKevchFGzKKnPrPaEfAyWKbRoCWUQpa5EQ66ne
 bqNZSrNW2gAehb2mQ2S7SPgZlmUHfFWi/2BJJ/FpooJkI5W0P9B7ie1Jmb5EiR1adFP9
 fmBJ2wX8WqQbEcjpvHUC9vHWhUxq5rTS71ElPpG0MDX1UPbbvA12TIzhQJ22nCHXCfiM
 yd+HiOoZmBJlrQrU7u5YY6LcOuOuvXBONvCvnrNM75nyEmdZH/tNrH6sw784WL+7RGl6
 +DOlWwqnD6CH9YI7z21986z3IEgzAtaAeZUBJK+Gzmdib4kx69yX/IlXYDuJEZHyKQAq
 q6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683249646; x=1685841646;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=n0soDqfw6362dujeUcWQ5P8Z55oslCidLxBQzR0OR5g=;
 b=fkSulBUvizPc0KX3ZXTD3TjWNBGJ8d4yTwZvHQxEk2120hitA01RS5N4UMfodkEd5S
 V4X860b4iFEBXohmMspN5j+lEYwCZ3QtR48qIyymCBXwfbvaGHBd3nZxBXowgAi/JBCd
 vQbBjSeIBuRnxVjdFnqbl1rGAUQUKRGKIWgLdmiuFZm6Rb1IVjnr9WdPl9GyH+alg0Fj
 aPXRpXapgUKEs/LtlqohCzu0m+ONCJ+jLniKgfgsVSRP3yE0rcwPsSCgFx/JY9Q3/P+d
 AJ8KH4MgwKTqAtegoVGb+reStEZne+xUfIN7k98Rs4EiryuQVmNGxLxDBpsAawMK0s7X
 5s8Q==
X-Gm-Message-State: AC+VfDztSWQBafkWNaV6ZcZOcZpkKZEFiH9lUYzWQVKc/11iySASj23e
 PqAzpdchJVwPwCY+l9D1/hc=
X-Google-Smtp-Source: ACHHUZ54hVNW8sc377s1AqcIhpKRNyKHeEd7ZYAA/6ulwj5hPj250Z/L+wAXPAyP+D0TL6KYMpGZwA==
X-Received: by 2002:a17:902:8c90:b0:1a9:3fab:3ebe with SMTP id
 t16-20020a1709028c9000b001a93fab3ebemr4578727plo.10.1683249645579; 
 Thu, 04 May 2023 18:20:45 -0700 (PDT)
Received: from ubuntu22-virtual-machine.localdomain ([211.218.36.103])
 by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b00199193e5ea1sm241636plg.61.2023.05.04.18.20.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 May 2023 18:20:45 -0700 (PDT)
Date: Fri, 5 May 2023 10:20:41 +0900
From: "wonguk.lee" <wonguk.lee1023@gmail.com>
To: shaggy@kernel.org
Message-ID: <ZFRZ6UwxnrxLf6ZX@ubuntu22-virtual-machine.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: wonguk.lee --- fs/jfs/jfs_dmap.c | 2 +- 1 file
 changed, 1 insertion(+),
 1 deletion(-) diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
 index a3eb1e826947..d8a03d3026cc 100644 --- a/fs/jfs/jfs_dmap.c +++
 b/fs/jfs/jfs_dmap.c
 @@ -3851,7 +3851,7 @@ static int dbInitTree(struct dmaptree * [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wonguk.lee1023[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wonguk.lee1023[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1puk7v-00Eo3n-Bc
X-Mailman-Approved-At: Fri, 05 May 2023 14:10:24 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: (trivial) Fix typo in dbInitTree
 function
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: wonguk.lee <wonguk.lee1023@gmail.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..d8a03d3026cc 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3851,7 +3851,7 @@ static int dbInitTree(struct dmaptree * dtp)
 	l2max = le32_to_cpu(dtp->l2nleafs) + dtp->budmin;
 
 	/*
-	 * configure the leaf levevl into binary buddy system
+	 * configure the leaf level into binary buddy system
 	 *
 	 * Try to combine buddies starting with a buddy size of 1
 	 * (i.e. two leaves). At a buddy size of 1 two buddy leaves
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
