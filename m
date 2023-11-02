Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8547DFA12
	for <lists+jfs-discussion@lfdr.de>; Thu,  2 Nov 2023 19:38:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qyca6-0008CY-FJ;
	Thu, 02 Nov 2023 18:38:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1qyca5-0008CS-5N
 for jfs-discussion@lists.sourceforge.net;
 Thu, 02 Nov 2023 18:38:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h5jG9nBSc5AEg7ke6YSBUJgaPee+c/yWS91x1FgrIc8=; b=hqXFgNOdIjDqwlcs3E86fGG2lT
 nHM+NloQzPc82KJgcoYt7RtpAdosrnDTfafee0osQTKCuWe3P7fNX5tDcNea/Lf5GRQOeoG6HHj0o
 OMhxYXvZdBhnh+5xfUwDUVM/0mcr/4vvJ6aOpV4gstDzlGU0+68Zfbj+68E3C+/Wy4ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h5jG9nBSc5AEg7ke6YSBUJgaPee+c/yWS91x1FgrIc8=; b=Y9Cp71y7uNxqMB6N0CwcS+A+hG
 NDn2qo1DcZC5M18no2HTzkPo6Qh/RFw0qbyTDqDgEKmNYPrBdyusDHZ70US4WE+vFFqlaU0RF85MH
 EQWGWBTCOjt4hIWDqcz9pEJlMtMUZVzl5SvzqoFz39PiriWZfyp1rtFOo14uHq5q4swI=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyca5-001Tq4-0V for jfs-discussion@lists.sourceforge.net;
 Thu, 02 Nov 2023 18:38:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5AF18CE2148;
 Thu,  2 Nov 2023 18:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876B2C433CA;
 Thu,  2 Nov 2023 18:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698950285;
 bh=KvHmjsuWuENPdykSnqhc8T1/Nm+ZXLZIqM/GRMEqkho=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=qbypTg25aDjPVpHwL2tdfDX8QH3Sa8x4BZLVGHoDuSQwtwPZ8UpXgbtmvyyl5Uv9w
 psPCRH7t+SqcnylpmOiYgn6sBbI8eKVxpnU8YwueGLKVZsDO3j/r6kHDo5ZXXf2Bt3
 GYsOEv5zltm01SQLKhd9YMJ5ODIMZdIr5fFc6gynmdLqXEl0QZt5h+V5FNlf/UFYoq
 Pqg0vf2x37/Y4awL+4VEpEBde46v41bfQbkp6YxoA2dsy0G68gmjrrThEcNodv2oVg
 PM2HCtOvcAqWvd/4wSUVI2kBBINaKAPvMeixrMmFNoVnf9npnQSQe5sfhivW53xzMS
 X4F6XQCW8obeA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 7440EC4316B; Thu,  2 Nov 2023 18:38:05 +0000 (UTC)
In-Reply-To: <425ffc38-a35b-45c4-9819-e51464f58450@oracle.com>
References: <425ffc38-a35b-45c4-9819-e51464f58450@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <425ffc38-a35b-45c4-9819-e51464f58450@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.7
X-PR-Tracked-Commit-Id: a779ed754e52d582b8c0e17959df063108bd0656
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e9806ff8a0f9e6eb193326383a7b88bf30ad0533
Message-Id: <169895028547.19486.9134832611759860162.pr-tracker-bot@kernel.org>
Date: Thu, 02 Nov 2023 18:38:05 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 1 Nov 2023 08:22:09 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.7 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/e9806ff8a0f9e6eb193326383a7b88bf30ad0533
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qyca5-001Tq4-0V
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.7
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
From: pr-tracker-bot--- via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: pr-tracker-bot@kernel.org
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Wed, 1 Nov 2023 08:22:09 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e9806ff8a0f9e6eb193326383a7b88bf30ad0533

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
