Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7092D9E83
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Dec 2020 19:09:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kosGt-0001EI-5Z; Mon, 14 Dec 2020 18:08:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dkleikamp@gmail.com>) id 1kosGb-0001DW-Jc
 for jfs-discussion@lists.sourceforge.net; Mon, 14 Dec 2020 18:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hqM1QqKek5Stjrm2s9QbhrJb51ijk6id9KDJs8a9Grs=; b=IA5pZ53cX0kjZovBnmZUfa/Rli
 jXWaFtQRW/FtAlmR7e2G/FyhB7zkLpYD6Fyg0JyDo6uT9vV5HmLIZeKOZ4+3YQAMK9en6bnZNC7dq
 /eA9aeY9DGpuFLi4aTKljy2/DBcDFYGchNjtbmk9A5+9wpsePCyXg4ipTEfOOZESIcRk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hqM1QqKek5Stjrm2s9QbhrJb51ijk6id9KDJs8a9Grs=; b=j
 slsi0aQFsYyNsmLzk3ovRcdhyHRz6p6Mi+jlHbkCjaWzuyd65P88r5SZBbSHEFrgKkGZkPt06nXCH
 Et9oIXoYS2RA0Q694IToBfvCCTs1hiitSnwqcSt38UEQ+816Qv73AuCNCIKKtH/m/SqqOYl4Wxe8o
 IuD7jXc807eDh+IA=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kosGN-00CqFv-6g
 for jfs-discussion@lists.sourceforge.net; Mon, 14 Dec 2020 18:08:13 +0000
Received: by mail-oi1-f196.google.com with SMTP id s2so20171271oij.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 14 Dec 2020 10:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=hqM1QqKek5Stjrm2s9QbhrJb51ijk6id9KDJs8a9Grs=;
 b=WZoEYA4q9rA3kw5q0YftWLtidKXiJF09Hrz1wT557UKnRUwiMwz7S2TNSNCXNZoDzv
 ViwJHL4siuujNgH+OD+AIRVskJvpd4kWl0gum8zl4GmN5/9SHl6ps9HKf/M9B8JsmtWq
 9CVPRLmk8p6ah6+hOVzzg47IjmPJIPBSE4H6hAN+A4DzU9eYFwjfZNStZl5ZIeM7+iyc
 JRmo44diyTFTc63qWxhBa4cjU3E1V9oqRnphuSYNTH0avwqsnZrANk9OK7sp7ZWnQtQ0
 IGcoi2hA5jvisz4Bb6IdQDOZ+nyaNswjnuOhoS59X8ghjHzALyYmzTGn6g+pw7H7nw+7
 hVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=hqM1QqKek5Stjrm2s9QbhrJb51ijk6id9KDJs8a9Grs=;
 b=bEZtZgAXmh/a84SIkcfMKmv+gCAUs+kLmyn1mpLiPJJWRgC2e83I3MOMvhH/+UOatv
 KpzvLdzn6s8tOK+LGdcs9ltZUfLkJ2EmOQWDfBxfKsI/VcsKtXEW7FplAhkUeHD2MEuc
 qGQp4mTIZfA+YlAQRC/bPk1oYnZG72Me0JsaEDarI5hxsTVxReVxjc03gOG9GSvA0TM3
 V418KFKVNu1ZZzKZSCQM9YnyMdrxbIz86xYpb7WdyTh+P049cKHI5UFg5/Dr+uV9a9mN
 mJHNuPwsl552zvUnlypjB7x0tIr9HEEprUe2+MUj2gwHZ6ISHN04aTdN/jQbV6uNGK2m
 5D7g==
X-Gm-Message-State: AOAM533nnNRy2tX96Qm95zRGbbknCGSTXY4djFZSO/ghwPogqOwXgqJx
 44V0rY0BuX9Xb1Uv/pMzr7Vn4KSm95YZMQ==
X-Google-Smtp-Source: ABdhPJzfSiqe6ltdpwfO5/Va5dTpFhXc03Wu3o1LM44aH+KJMLScTSXpZOKYNIWBuLRTkXGCgw0wdQ==
X-Received: by 2002:aca:e007:: with SMTP id x7mr2338911oig.8.1607969273153;
 Mon, 14 Dec 2020 10:07:53 -0800 (PST)
Received: from [192.168.0.190] (cpe-68-201-65-98.stx.res.rr.com.
 [68.201.65.98])
 by smtp.googlemail.com with ESMTPSA id o6sm4056123oon.7.2020.12.14.10.07.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Dec 2020 10:07:51 -0800 (PST)
To: Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>
From: Dave Kleikamp <dkleikamp@gmail.com>
Message-ID: <819c9249-ee95-7d67-0577-b9b1f7c09832@gmail.com>
Date: Mon, 14 Dec 2020 12:07:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dkleikamp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kosGN-00CqFv-6g
Subject: [Jfs-discussion] [GIT PULL] jfs updates for 5.11
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit 585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba:

   Merge tag 'fscrypt-for-linus' of git://git.kernel.org/pub/scm/fs/fscrypt/fscrypt (2020-11-12 16:39:58 -0800)

are available in the Git repository at:

   git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.11

for you to fetch changes up to c61b3e4839007668360ed8b87d7da96d2e59fc6c:

   jfs: Fix array index bounds check in dbAdjTree (2020-11-13 16:03:07 -0600)

----------------------------------------------------------------
A few jfs fixes

----------------------------------------------------------------
Dave Kleikamp (1):
       jfs: Fix array index bounds check in dbAdjTree

Dinghao Liu (1):
       jfs: Fix memleak in dbAdjCtl

Randy Dunlap (1):
       jfs: delete duplicated words + other fixes

  fs/jfs/jfs_dmap.c   | 10 +++++++---
  fs/jfs/jfs_dmap.h   |  2 +-
  fs/jfs/jfs_extent.c |  2 +-
  fs/jfs/jfs_extent.h |  2 +-
  fs/jfs/jfs_logmgr.h |  2 +-
  fs/jfs/jfs_txnmgr.c |  2 +-
  fs/jfs/jfs_xtree.c  |  2 +-
  7 files changed, 13 insertions(+), 9 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
