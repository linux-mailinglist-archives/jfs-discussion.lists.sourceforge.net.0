Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB79A664134
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 14:06:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFEKm-0002ky-Iv;
	Tue, 10 Jan 2023 13:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dsterba@suse.cz>) id 1pFEKk-0002ks-VQ
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 13:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oagt+4vJMZBwYo+UNXn/MG8vqxeNFrHBgtCcArXVT6c=; b=EAflp5gahAfJwbhM27rO4DFQG3
 U+eyFJlOj/9x5+dOPUUcJgCUSNnmPDi1ZbPqxGOqBS23nX1o4oYpjfpYXHRM0CsMRzFscaA1l+F9Z
 a8r9fdyCyB3etDVdvuZrv6+KK/jLdw8wqbzLh5Qk0UK6Wfx89C+I34l2mMlfxDy1c26Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oagt+4vJMZBwYo+UNXn/MG8vqxeNFrHBgtCcArXVT6c=; b=j/d9hNYMp31BMcBfnCKgL7019L
 lMtZ7ApI/ec6gYI+nnAteM3XycZvFhGrIbHXNoeBmwX5UXk4vCxmPpZzgsL+qnEVQ6pxj7z2s2Wqn
 UaNDVcvpwv/x2CeRU1FdHvFr3FT2yZjWJ9kylvdNtdZSXEWYtJdRLZdiOmXySs96EA20=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pFEKg-00CtIo-PI for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 13:06:30 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 8C9DD75F89;
 Tue, 10 Jan 2023 13:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1673355976;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Oagt+4vJMZBwYo+UNXn/MG8vqxeNFrHBgtCcArXVT6c=;
 b=J9B94SIbxnl0oE/XF1iLiZ/pxfG9UhvmUFS5xpUxqDUMAKJfxpqumk/XZr7MssvYOcSDwa
 xSmOMO1k5wFEThQsRLQPlW5wQj+M1FlrCn0irK/hj1yWrlqya7okuRchYwsOvdaBGNvoDk
 tQcuLbbpyP9cf6J1FdS1G5nshzgF9wA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1673355976;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Oagt+4vJMZBwYo+UNXn/MG8vqxeNFrHBgtCcArXVT6c=;
 b=QJYz3Rx4bQN8uaOfKuCv7ws5nYtLdlYJZpH7vCk2H1VJ5TaHkPwSItV/3ew5XEFL8w24Qx
 N7mZks4HQ0kYT3CA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 344E613338;
 Tue, 10 Jan 2023 13:06:16 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id X87RC8hivWOcMAAAMHmgww
 (envelope-from <dsterba@suse.cz>); Tue, 10 Jan 2023 13:06:16 +0000
Date: Tue, 10 Jan 2023 14:00:42 +0100
From: David Sterba <dsterba@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20230110130042.GA11562@suse.cz>
References: <20230108165645.381077-1-hch@lst.de>
 <20230109195309.GU11562@twin.jikos.cz>
 <20230110081653.GA11947@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230110081653.GA11947@lst.de>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 10, 2023 at 09:16:53AM +0100, Christoph Hellwig
 wrote: > On Mon, Jan 09, 2023 at 08:53:09PM +0100, David Sterba wrote: >
 > The btrfs patches were sent separately some time ago, now merged [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pFEKg-00CtIo-PI
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

On Tue, Jan 10, 2023 at 09:16:53AM +0100, Christoph Hellwig wrote:
> On Mon, Jan 09, 2023 at 08:53:09PM +0100, David Sterba wrote:
> > The btrfs patches were sent separately some time ago, now merged to
> > misc-next with updated changelogs and with the suggested switch to folio
> > API in the 2nd patch.
> 
> Yes, 7 weeks ago to be exact.  I wish we could just feed everything
> together now that we've missed the previous merge window, as that
> makes patch juggling for Andrew and Matthew a lot simpler.

The patches are not fixes so they should wait for the next merge window.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
