Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CEE6630D9
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Jan 2023 20:59:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEyIQ-0000WB-VH;
	Mon, 09 Jan 2023 19:59:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dsterba@suse.cz>) id 1pEyIP-0000Vs-6A
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Jan 2023 19:59:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uqf4EYPtaa7qRzGaumggMD5PgDktxPAtMHctMr6gLGM=; b=Ad7xnU1fv3/amAbRMf6QPDYzhl
 plM/q4raVObLbl6OlIsw2ysgTUr+ZQ6zKvcSUIgnm0t0hk9uyE/tTK9j9XoHpHSatOSvJUNQ92gM8
 j2XTRuq3po9OnWXgQXOQBGhpvl0QQR/HoBg6neSEQj6IpJa+CeZuvJIRO6VaplO04PRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uqf4EYPtaa7qRzGaumggMD5PgDktxPAtMHctMr6gLGM=; b=MscxK8AOa+PfX/WxQP6YZg7Ny+
 VAK2ma5UxvWUtJ4/zdZMfEYDk09jB8CBuIyhp0S0uB66byoF01dHa05Y8eo9g48wfOdNjSgVV3Xm/
 Nv0VsE3cUxVe+CVR0kNq1piV1eVRHPfKdgYFR+wfAb0qRzsGpc1pZSWN3qFjAPyEknEE=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pEyII-0001g3-B3 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Jan 2023 19:59:01 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id D39605BFED;
 Mon,  9 Jan 2023 19:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1673294323;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uqf4EYPtaa7qRzGaumggMD5PgDktxPAtMHctMr6gLGM=;
 b=r7nHWucU7ucFRP3fhs/qdJJmi8IWTyjhS5HquIk9+er3pou1slI3Tziz1P0gwQy7fLoZWn
 pNhRpAn8fAwQwTWe0YhXV5w9A+rV5vlxyfEnw9PEInj1Ui6ywzhAWlFuJMzVZzgC6gUYUR
 59kJnDFifOqb8cczNf6njyjHHZ3gf90=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1673294323;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uqf4EYPtaa7qRzGaumggMD5PgDktxPAtMHctMr6gLGM=;
 b=Qo1EnZ1KxOKENH934JGqVsVzwnwFxxdUsqzwmMD8z8C/qM1N9F6aNZ26bkr587ylrLisjp
 sEHRddTliaeafDCg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6ADCD134AD;
 Mon,  9 Jan 2023 19:58:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id gEfeGPNxvGN0XAAAMHmgww
 (envelope-from <dsterba@suse.cz>); Mon, 09 Jan 2023 19:58:43 +0000
Date: Mon, 9 Jan 2023 20:53:09 +0100
From: David Sterba <dsterba@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20230109195309.GU11562@twin.jikos.cz>
References: <20230108165645.381077-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108165645.381077-1-hch@lst.de>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 05:56:38PM +0100, Christoph Hellwig
 wrote: > Hi all, > > this series removes the write_one_page API, and it's
 folioized > implementation as folio_write_one. These helpers inter [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pEyII-0001g3-B3
Subject: Re: [Jfs-discussion] remove write_one_page / folio_write_one
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
Reply-To: dsterba@suse.cz
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Evgeniy Dushistov <dushistov@mail.ru>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mark Fasheh <mark@fasheh.com>, Josef Bacik <josef@toxicpanda.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jan 08, 2023 at 05:56:38PM +0100, Christoph Hellwig wrote:
> Hi all,
> 
> this series removes the write_one_page API, and it's folioized
> implementation as folio_write_one.  These helpers internally call
> ->writepage which we are gradually removing from the kernel.
> 
> For most callers there are better APIs to use, and this cleans them up.
> The big questionmark is jfs, where the metapage abstraction uses the
> pagecache in a bit of an odd way, and which would probably benefit from
> not using the page cache at all like the XFS buffer cache, but given
> that jfs has been in minimum maintaince mode for a long time that might
> not be worth it.  So for now it just moves the implementation of
> write_one_page into jfs instead.
> 
> Diffstat:
>  fs/btrfs/volumes.c      |   50 ++++++++++++++++++++++++------------------------

The btrfs patches were sent separately some time ago, now merged to
misc-next with updated changelogs and with the suggested switch to folio
API in the 2nd patch.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
