Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E46684198F
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 Jan 2024 03:49:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rUeBs-0007Zf-Mg;
	Tue, 30 Jan 2024 02:49:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1rUeBq-0007ZZ-Vr
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jan 2024 02:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gkQffXaGnrN1zLoE2HMtpgZ/J5kgWlNlA1upVdwPVUw=; b=ZOK1eFcugQ7m2cRqFAAYcIdMg8
 EGOHQufIniMp3HCgrIhlqalrTNw+nn8gLzR2QUlMtFPNVTTFhn5iIxEDVPpXZgvi41ZiOrOcWEZPm
 NnAC7ahGAdCGf/fGblfcmYAKFkIB8RYjOaZI09ho69QumC4A78B9Ewb3gu1jSsPsa1sg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gkQffXaGnrN1zLoE2HMtpgZ/J5kgWlNlA1upVdwPVUw=; b=G+2Ynl5NYoDcIpmXhbvB1oBm9e
 NNQgaLsOe8GN4eQ6/YcJaccTS1JVu2OU5Dxesuw1WO3CTTtp+yhZrrGO1REiPxXf9u3sV39iHZO+1
 jGuigGwWscEFqbYi42R6RV3VhmSdUw0lIhb4TyaRB/ZZ37dXBw8LzDKf5cFmO9qYsYR8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUeBq-00072E-Nx for jfs-discussion@lists.sourceforge.net;
 Tue, 30 Jan 2024 02:49:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 01AE8626CD;
 Tue, 30 Jan 2024 02:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E62C43390;
 Tue, 30 Jan 2024 02:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706582969;
 bh=+7fvEbT/eFafLqeM73nGlA5cI06z0JXVPei/AHdU+1o=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=ApV4p7XT6N6LCeOllJKYcayQiLhbv8fb0RpwRpxZz36hGwppAGHu20HGTkXFmgoYQ
 Z87It4190BN+y62PPBsLmSSQ7XTHps4oMTtP8b5PMAhjZYPHXI5dNJBUtLaPcDEnBi
 zHg4Ys+WasxWh7vQqv5GiypBe7+8htAOavoqjIIBeEDj4VFYuvA43cyTUy681Gct1V
 c+Qx9xqpYQokDKb0g5SzsW/5jTzf0j9DKPJE5JO0G3Y23T8tJYXf7jKY+2SEbKxdLX
 C05a2Fxq3r37+xXRImW5OZ9Qir6k/c5wX6E9+VfqbKuk4rZP8ZqkA0BD2SHziI7w2d
 eKhVpuEqlfREA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 8C5F1C561EE; Tue, 30 Jan 2024 02:49:29 +0000 (UTC)
In-Reply-To: <09ec99b3-f2f8-489c-9f96-48f727326ee3@oracle.com>
References: <09ec99b3-f2f8-489c-9f96-48f727326ee3@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <09ec99b3-f2f8-489c-9f96-48f727326ee3@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8-rc3
X-PR-Tracked-Commit-Id: e42e29cc442395d62f1a8963ec2dfb700ba6a5d7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 861c0981648f5b64c86fd028ee622096eb7af05a
Message-Id: <170658296957.4250.12706220941141808559.pr-tracker-bot@kernel.org>
Date: Tue, 30 Jan 2024 02:49:29 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -6.5 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 29 Jan 2024 15:23:03 -0600:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8-rc3 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/861c0981648f5b64c86fd028ee622096eb7af05a
 Content analysis details:   (-6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rUeBq-00072E-Nx
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.8-rc3
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Mon, 29 Jan 2024 15:23:03 -0600:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.8-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/861c0981648f5b64c86fd028ee622096eb7af05a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
