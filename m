Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C06A78F5BE
	for <lists+jfs-discussion@lfdr.de>; Fri,  1 Sep 2023 00:43:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qbqNN-0005Ea-GO;
	Thu, 31 Aug 2023 22:42:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1qbqNM-0005EN-A0
 for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Aug 2023 22:42:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mD11Guxz+K3ji5h0nICOIXF3tJNmVITAlDBtEOmhIKU=; b=fa8zLuOS9ia8MTCBcptLFho+kv
 RZW7Ol4IoY9Sa3UY8KKxEhjv1sRXAwmgmkVO7HpVTWcfJp1OpI6xZ7e65hx7X9OB8S8aH1vX1heR6
 E0HXXWURRL0TafzssHNyzJORtthO0agNkXG/MVpQ+O1BaN0F6UE8xdmIOIWKWNQTXekM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mD11Guxz+K3ji5h0nICOIXF3tJNmVITAlDBtEOmhIKU=; b=YSohqLqRqBeteqXKsjv8m5pg2+
 6dmKhBzIvNkfuuViqG6Am1jmQU1Z2bitx+tMMKXHK3zjqqcIMGZrNTH4wmNPbKy1pWeftzBak6XrN
 dkcU7meBiIGV3UTZCbpEiQCXiQ16fX7Plug3EnsImZUwxECvlPxC0t2rcotNuu6zGIyY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qbqNG-005GGy-Ji for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Aug 2023 22:42:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0780B62974;
 Thu, 31 Aug 2023 22:42:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC69C433CD;
 Thu, 31 Aug 2023 22:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693521764;
 bh=BFkjwxRj+nSKRBxr7rtqZHA8zcfp1s1LTZb8rdNR1qI=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=D+6rwon7IDYDenZYBtvxfnHjTC6/qX8XUFtsjnKSZIGNrSJOLD4rI5oS0OhvjTKDi
 vPaUU2N/9YQaGrYEWZ5J1GRiDbBX5Pi1kGEToEB8ygQjqme1IL7I71plaOT9DoehmN
 C4UHvqO+ufrKnaC3tvyXESkKBQrlc9TWXv8IIMKEeKy25WvQDo6v7YunpT04BT3w9s
 bE0YQyCM2TD66on0ZtFHy+lV4wE7ShxiEPNd3vB7M14N6JR6RRHxosnZHG7pc7PB12
 k0C3wIAaTIdxFEyJ8hkOuERezOEtijyzUjcX+K0OLa4eOVURl0qgzzZGL8/PonYQvz
 W3nrYTGJor07Q==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 BC0D3C595D2; Thu, 31 Aug 2023 22:42:44 +0000 (UTC)
In-Reply-To: <e73dbacc-f2ba-4210-879e-42524a4d6283@oracle.com>
References: <e73dbacc-f2ba-4210-879e-42524a4d6283@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <e73dbacc-f2ba-4210-879e-42524a4d6283@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.6
X-PR-Tracked-Commit-Id: 0225e10972fa809728b8d4c1bd2772b3ec3fdb57
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7e5cd6f69735d6294965b20e8d26a3bd68ee726e
Message-Id: <169352176475.24475.921763886436527535.pr-tracker-bot@kernel.org>
Date: Thu, 31 Aug 2023 22:42:44 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 31 Aug 2023 10:21:26 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.6 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/7e5cd6f69735d6294965b20e8d26a3bd68ee726e
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qbqNG-005GGy-Ji
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.6
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

The pull request you sent on Thu, 31 Aug 2023 10:21:26 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7e5cd6f69735d6294965b20e8d26a3bd68ee726e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
