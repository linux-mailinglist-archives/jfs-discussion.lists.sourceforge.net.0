Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0DE744E14
	for <lists+jfs-discussion@lfdr.de>; Sun,  2 Jul 2023 16:27:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qFy2X-0005kt-Ie;
	Sun, 02 Jul 2023 14:27:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew.kanner@gmail.com>) id 1qFbF0-0002q8-FP
 for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Jul 2023 14:06:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r/GvNDtCln3mttOJGf/TOdwCpXEhlkTWnrJx4RvWdwM=; b=QWQaDjtVlAZUFtTSr9EtYk82gt
 BF3qZzzSM+R0OefGQLUH906MNxs+SwqfoCJPRlJmmjursTv4D7K7fmDcxkISpaMAcYlp/GooCiyP/
 KtYGlC/+Z1eoFDQDFqUhQqevLVkgMOuWR8orhyIbJc1oX6i6llhomATQzPPyikcQ/Qxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/GvNDtCln3mttOJGf/TOdwCpXEhlkTWnrJx4RvWdwM=; b=er4LaEpwvCGcMEITJLDlxlNonA
 7nC5fimKrkSVOgtcP+ogdXyFTtqeWjreN8jy89TnPr5A9GBHaKtsxcsIvJeLNK4vw6NNvVYy5fyc7
 b7Bmeah6YO4htE6aZBH+ETVo4D/0nWQKVLvXLpE0OLZXCHRxUQqbjatKrY7YQQl5Q2Xg=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qFbEx-0007dX-4T for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Jul 2023 14:06:22 +0000
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-4f875b267d9so4687863e87.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Jul 2023 07:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688220372; x=1690812372;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=r/GvNDtCln3mttOJGf/TOdwCpXEhlkTWnrJx4RvWdwM=;
 b=Ks+QnT+fLgC0REedKsq6ZYblXr0OPOIYcR3pxSB4RldP8BK+6Ao6RFi62cO4CzInVQ
 cF/wFA4tt56MB5ejw27Tcg5x4Em+0EPBcZnDPGRmOg4apbbLXi/SkJh07g3dPNTNntxD
 yOKhawX9C+aNnFdy9BZDAGfOUQYIyD977YCVbJyTMKJSN7Wb3R09OqeSICnsqt3nchhG
 IAi+sH/2Krg04SpnuF8Hc07yXhol7tRdinOv8BtxHfZBaBEODDY/yxCU8s6TWTM42t4r
 /T8vXz0THeG/90v7SEynhu9a8J9BfObVMP0CTm3N8rDFGFI519AGaZEeFyvCR7rYyAyh
 0VsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688220372; x=1690812372;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=r/GvNDtCln3mttOJGf/TOdwCpXEhlkTWnrJx4RvWdwM=;
 b=UJD4N5dUAn1W+wUTRx3M8oGazenC2UjgltJ4IhoQlkgy/7D/pGo3wts+rQSDWiWseT
 tj6aNnQ3wOrgVZsokDFldAkqEzx59MyiXGcNz7/BQi66NwC3a4IgPByav2sEyAgOUz3g
 jruJOG/ugHUdvjIkDBxnt8WKtXeuSVpz4b2n08dkwQYLjbak5NXXE237HyF6Efm6ngyf
 UZAugdoAxsf5MvywZ5jERkNNllBjAcHrBkmVQpzJy7tDBbU7HbdL8V6aWjLNIaPRBTvk
 B+kveYZ54mqB8zNge1tKueoY2hlYIOEE7py/7yPTDMrljglXzb7q6oB8vfsVbLn5wZ1w
 JJ6Q==
X-Gm-Message-State: ABy/qLYBE75zQXzsWl1B0N5DKu7ZQTI2a/fnYyAkyIxT9RDBSlTOAzIr
 F9w9LjdgEr1FN4ZsQVkX9QA=
X-Google-Smtp-Source: APBJJlFR96QDw3TIO2gO0LlFDT9R6vIjC9Z0ojQV9hS+B6DNsisw0F85A1+B+HGvx1G6ukQSMJileA==
X-Received: by 2002:a05:6512:34c9:b0:4fb:820a:f87f with SMTP id
 w9-20020a05651234c900b004fb820af87fmr3870098lfr.10.1688220372178; 
 Sat, 01 Jul 2023 07:06:12 -0700 (PDT)
Received: from localhost.localdomain ([77.222.24.81])
 by smtp.gmail.com with ESMTPSA id
 q2-20020ac25a02000000b004f122a378d4sm3426174lfn.163.2023.07.01.07.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Jul 2023 07:06:11 -0700 (PDT)
From: Andrew Kanner <andrew.kanner@gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Sat,  1 Jul 2023 17:05:41 +0300
Message-Id: <20230701140542.2252-1-andrew.kanner@gmail.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20221201124628.603505-1-liushixin2@huawei.com>
References: <20221201124628.603505-1-liushixin2@huawei.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  +Tested-by: Andrew Kanner for The next change complements
 the patch from Liu Shixin (see above). Two patches for fs/jfs/jfs_{imap,
 dmap}.c fix syzkaller issues: Link:
 https://syzkaller.appspot.com/bug?extid=9f06ddd18bf059dff2ad
 Lin [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.kanner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
X-Headers-End: 1qFbEx-0007dX-4T
X-Mailman-Approved-At: Sun, 02 Jul 2023 14:27:01 +0000
Subject: [Jfs-discussion] [PATCH 0/1] fs/jfs: fix KASAN double-free warnings
 after failed jfs_remount()
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
Cc: Andrew Kanner <andrew.kanner@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

+Tested-by: Andrew Kanner <andrew.kanner@gmail.com>
for https://lore.kernel.org/all/20221201124628.603505-1-liushixin2@huawei.com/T/

The next change complements the patch from Liu Shixin (see above).
Two patches for fs/jfs/jfs_{imap,dmap}.c fix syzkaller issues:
Link: https://syzkaller.appspot.com/bug?extid=9f06ddd18bf059dff2ad
Link: https://syzkaller.appspot.com/bug?extid=6a93efb725385bc4b2e9
Link: https://syzkaller.appspot.com/bug?extid=90a11e6b1e810785c6ff
Link: https://syzkaller.appspot.com/bug?extid=47366a6b503c7edf6bbb
And Similar bugs from the other branches:
Link: https://syzkaller.appspot.com/bug?extid=cfff8c52c283dd09bf27
Link: https://syzkaller.appspot.com/bug?extid=e8f9034a130a66a2b351
Link: https://syzkaller.appspot.com/bug?extid=5c604c1cc148275ab8a6
Link: https://syzkaller.appspot.com/bug?extid=ea731a6641531af62f80
Link: https://syzkaller.appspot.com/bug?extid=b212249c28280daa4576

Andrew Kanner (1):
  fs/jfs: prevent double-free in dbUnmount() after failed jfs_remount()

 fs/jfs/jfs_dmap.c | 1 +
 1 file changed, 1 insertion(+)

-- 
2.39.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
