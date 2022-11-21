Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B297A631DC0
	for <lists+jfs-discussion@lfdr.de>; Mon, 21 Nov 2022 11:07:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ox3i6-0001F0-Aq;
	Mon, 21 Nov 2022 10:07:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1ox3i4-0001Er-0g;
 Mon, 21 Nov 2022 10:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4IViuQpwPEcZzjjxamaWcFWnSXKTM0MbrHGsCmeqkQ=; b=diK2oIvQLvY86NopjjmYqIAimn
 ROuB76C5qW3SMZp+S+UQs9vNl1NICWAwIRqaZo7IAuid9TtReQ4jKnypvYzuRrKaFSON+MBf8t+6s
 Ben+daYKmCn+GzIBtPtNSZLeXDslW7yKDzfRwVvKzKyPUYQbte9ZxCyO0T6NoBeczAAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q4IViuQpwPEcZzjjxamaWcFWnSXKTM0MbrHGsCmeqkQ=; b=ZFYHldFN/abMM5+hWfHWk1PWPh
 gDHnrtmFqd5xumJD+CmpfzXQHXmO5bpoZvQ2ykovU1rUlyBEWN2vvUitTiznc/6k1QjMYx0YjmeGs
 ZMhWzX9TylPSWXlCpHn1kq6SZYcPKA2SvLtXkFbqrF5tiIlVPZW75xRHqK6eKcsmH5OU=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ox3hz-005hYS-6g; Mon, 21 Nov 2022 10:07:27 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id BC83421E2E;
 Mon, 21 Nov 2022 10:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1669025234; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Q4IViuQpwPEcZzjjxamaWcFWnSXKTM0MbrHGsCmeqkQ=;
 b=jWO57yYjiG6oJ7os9jTrYvpZwMpk7iFCyXSFiozl+kCieh91bLV3UGjW3Bb55k3q0DM0iT
 Pye7XzjLd+H0jQuBklHlAxqt1U3WbzDWXLeMIK5xCM8SWsovnxyhrVye84ieWJeWn5QENP
 cU5eX4gfF1uRGBx6kvzWOREKWBTdjjA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1669025234;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Q4IViuQpwPEcZzjjxamaWcFWnSXKTM0MbrHGsCmeqkQ=;
 b=C/PSDzkFpjgWFOKTSy3+AJAFIyRJIUsoxq+JCiCyQBTUxM8KgZql1lzPCYbkjZkbOfVj4b
 L4lcWr/A/flK1BAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A79931377F;
 Mon, 21 Nov 2022 10:07:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 4s7iKNJNe2MjAwAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 21 Nov 2022 10:07:14 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 2DEFDA070A; Mon, 21 Nov 2022 11:07:14 +0100 (CET)
Date: Mon, 21 Nov 2022 11:07:14 +0100
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20221121100714.73zjzpbgdvt5j7xv@quack3>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-3-hch@lst.de>
 <20221114104927.k5x4i4uanxskfs6m@quack3>
 <Y3UMV2mB5BkMM5PY@infradead.org>
 <20221116182040.tecis3dqejsdqnum@quack3>
 <Y3XVU/gdoT5EH6xh@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3XVU/gdoT5EH6xh@infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 16-11-22 22:31:47, Christoph Hellwig wrote: > On Wed, 
 Nov 16, 2022 at 07:20:40PM +0100, Jan Kara wrote: > > Looking at the code,
 IMO the write_one_page() looks somewhat premature > > anyway in [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ox3hz-005hYS-6g
Subject: Re: [Jfs-discussion] [PATCH 2/9] ext2: remove ->writepageo
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Jan Kara <jack@suse.cz>,
 linux-karma-devel@lists.sourceforge.net, Bob Copeland <me@bobcopeland.com>,
 Namjae Jeon <linkinjeon@kernel.org>, linux-mm@kvack.org,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Christoph Hellwig <hch@lst.de>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed 16-11-22 22:31:47, Christoph Hellwig wrote:
> On Wed, Nov 16, 2022 at 07:20:40PM +0100, Jan Kara wrote:
> > Looking at the code, IMO the write_one_page() looks somewhat premature
> > anyway in that place. AFAICS we could handle the writeout using
> > filemap_write_and_wait() if we moved it to somewhat later moment. So
> > something like attached patch (only basic testing only so far)?
> 
> Yes, this looks sensible.  Do you want to queue this one and the
> ext2 and udf patches from this series if the testing works fine?

OK, I'll take udf and ext2 patches through my tree.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
