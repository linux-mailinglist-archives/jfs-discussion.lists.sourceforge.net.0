Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CAA9AF3B9
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Oct 2024 22:34:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t44Wn-0007tV-QO;
	Thu, 24 Oct 2024 20:33:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1t44Wl-0007tN-U2
 for jfs-discussion@lists.sourceforge.net;
 Thu, 24 Oct 2024 20:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jd4bL9C2tNU6ojVdIl3Ff3V9qAaw0V05ATndy3zxR+I=; b=ELwhcJBAKPvwPCana6ke2xDDJG
 5RHT4um4RyQlr1Kf1zIWXm+0+vmMjT29+hbgjkPZmZBJXGFRMDRRknLvI9t+H3HxPr36R43GvPn82
 rptX0p7SzCsi9/NlrnF4Oq6znUILP4YOdLIAqkUtJPuQiZF7xM2yuF/Un8II/Hba8tQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jd4bL9C2tNU6ojVdIl3Ff3V9qAaw0V05ATndy3zxR+I=; b=X6URv3/ekTRfn1cDnEbM/qYhBi
 xOuIMqXlWRTctAelomPSnr7CxRqBp3MteLV40z33020z+cGdoEV/6lN547PWBX00OktIOEiazbWzY
 Bm+WGWPlFPC4KHx1tnRFU+BS/0zvtTuZIjzLeBX+X/yTWk7upUxnZnqgVe/+7CX+P82Y=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t44Wm-0002M3-2V for jfs-discussion@lists.sourceforge.net;
 Thu, 24 Oct 2024 20:33:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 20C8DA4574D;
 Thu, 24 Oct 2024 20:33:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09276C4CEC7;
 Thu, 24 Oct 2024 20:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1729802021;
 bh=7I2X+qZ6mP4hmuNpH87zCDTOI+rs15iT+RXn7G4wTfI=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Hf7RO4wF8I/NOH5RvyHPsBwiJWbXw+SHhVGp+xJ9FQGUWFLeKO7Oy8qcvcpj3zKHt
 YlSxwHb0CJf1GTtvOIL7fAcXwQRDJbaKg06o7OO6FkHMqAYugHU6zMkYzR7cuIB6S6
 dmsZEGeL1GubYtue7bua8/rBSGjoBZuVkEfLSWmjyDmwF63GIMJVQkL41Ph9wpnxvy
 DABhibo7mwV8jSzNspZhh5ApCmZPHmEuGCdx/BOgRxhO/xkf0ixe9HBgvMuJtM52PI
 vkSZQ8jayvjRWjHj0iVyMVjyKA+9+iItk2+N0q+vPnuT7ontqbCcocRFpTfjLJNwFZ
 L3x0TxNKHaheQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EB16D380DBDC; Thu, 24 Oct 2024 20:33:48 +0000 (UTC)
In-Reply-To: <6b12f129-69d8-4bc0-b369-0942a6bd2d4f@oracle.com>
References: <6b12f129-69d8-4bc0-b369-0942a6bd2d4f@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <6b12f129-69d8-4bc0-b369-0942a6bd2d4f@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12-rc5
X-PR-Tracked-Commit-Id: 67373ca8404fe57eb1bb4b57f314cff77ce54932
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6cc65abee8ee1ef5cfeb2748157be232262956a8
Message-Id: <172980202748.2376768.17508327356035946587.pr-tracker-bot@kernel.org>
Date: Thu, 24 Oct 2024 20:33:47 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 23 Oct 2024 08:38:10 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12-rc5 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/6cc65abee8ee1ef5cfeb2748157be232262956a8
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t44Wm-0002M3-2V
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.12-rc5
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

The pull request you sent on Wed, 23 Oct 2024 08:38:10 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6cc65abee8ee1ef5cfeb2748157be232262956a8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
