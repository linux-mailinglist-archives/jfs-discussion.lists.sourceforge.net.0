Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A6A82A26C
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Jan 2024 21:39:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rNfLk-0002s0-Ux;
	Wed, 10 Jan 2024 20:38:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1rNfLk-0002rr-HH
 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Jan 2024 20:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lxf9cBQ6oU8UX1vEMZZbZ3ydSpRFQyMGlh6C3whS05s=; b=PwbjM/yrRbCs8Jn2s1iX9mLvMJ
 hZy3Rl4lKmX2a0gTGYgVoXjKpAocdVcVNP1HKQOSy6NfCtYiFpSXb32rXjkEU9NgOd1UZ9Po1aP3p
 LPl3opXAe456zuhbiYQrOEFIEchAi6dSHx7S5+BG+2PwpDT8rLmMUwUDL9JO4/9QRdT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lxf9cBQ6oU8UX1vEMZZbZ3ydSpRFQyMGlh6C3whS05s=; b=ScPZVbNoRJpfeO9t78b9vSyBqv
 k90QlRoSZlVN7dal1LqKLZm7so7imn7jRRcUEcjNTSBe+RxCLNH1HQYqaYifT8E3MYGCsI8r8jn6/
 VOpMlIUr3jQ+gL+4t1lKJYnLN4adhCMCWDSC3862ZhmkenLrJASGD1a6jctVyPpdmgnw=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rNfLf-0000iQ-V6 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Jan 2024 20:38:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id A1DC1B81E9B;
 Wed, 10 Jan 2024 20:38:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 50889C43390;
 Wed, 10 Jan 2024 20:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1704919125;
 bh=1r5k0bLV+cuzim+kekNMBpccTVBN1yLgMZyYKkNFgp0=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=mHMwFkGL9qrj++Re6j4q07XL4+go495Aj/K3w7VMjlSO5dnnyGkW5Qdv6znSffvAS
 1eHaP4shgtQaTphMbmrkQYiIwLbfiwR/6ONN+bWcNEkD2jqQyB4CzC7052ckXoVu3C
 2Zv/yRIitp3KOaFvzoY93CqG1JwvanHJsNtvicD31tKJLcnvgTy6qmPyv+CGqZrYck
 az16lGsmut/PyHnOb5hxvdvv9f9h6vqBzDGxBkMVYjR729+op2m6Css/0yJsO2Oe3N
 ksPLw7q26Sey7ej0iAQFynwamVZ3VobauAVgy9Poef/8+LONeHpxtcU+4rMRSz4vZW
 M1GEjdr2afRfA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 3FE8CD8C96F; Wed, 10 Jan 2024 20:38:45 +0000 (UTC)
In-Reply-To: <6d22d04c-07a8-40b7-9f29-6862a48f070d@oracle.com>
References: <6d22d04c-07a8-40b7-9f29-6862a48f070d@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <6d22d04c-07a8-40b7-9f29-6862a48f070d@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8
X-PR-Tracked-Commit-Id: a280c9ceeca73fad22af79b08b470fc7126cf1d5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 032500abc5dc7add035ad5bc8eddf67e97f686b6
Message-Id: <170491912525.22036.9972924584728088326.pr-tracker-bot@kernel.org>
Date: Wed, 10 Jan 2024 20:38:45 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 8 Jan 2024 09:45:05 -0600:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/032500abc5dc7add035ad5bc8eddf67e97f686b6
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rNfLf-0000iQ-V6
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.8
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

The pull request you sent on Mon, 8 Jan 2024 09:45:05 -0600:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/032500abc5dc7add035ad5bc8eddf67e97f686b6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
