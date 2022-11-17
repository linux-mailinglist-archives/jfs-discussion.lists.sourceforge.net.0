Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4148962D384
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Nov 2022 07:32:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ovYRk-0005TB-9x;
	Thu, 17 Nov 2022 06:32:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+7a745b0808b3927cdbe5+7025+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ovYRi-0005T2-1P; Thu, 17 Nov 2022 06:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sPTNEKYS/tLrxLQ4oI8+Sww3RL9H9VBsThKBpc9p/Gk=; b=m1jHqQ9lVLePRDcfFt6w++BoIc
 9D4rQ8nm23uz4jnXqq3gMk36S3qO10m98GyBipwvYBVzrGjKGOfDR9CJKwx+MgCrrBAit+wxh90O8
 TA+Rl50BnLxnvLHGO7d5Vh4tlSzRLoGU/OUmKxApi4rvJNoY9zWZ856DcQeAVl+Q++jU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sPTNEKYS/tLrxLQ4oI8+Sww3RL9H9VBsThKBpc9p/Gk=; b=fjw2SSi1zelV+/eyIGtkPrzvCN
 JDLooZYO4jlFVcSkufvwDUvkHtBWQ+1mVVv+/jM7JY0OlXTrlshphHK9p1eEOguA/Q/kogsAEkjyg
 IGGEGmso+bAAfKfynW+bPV8ka5bEggmTuLUOIN8HCBL9SwoTV0CLHm1+muSC9HlNkdSQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovYRf-00B5sl-TL; Thu, 17 Nov 2022 06:32:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sPTNEKYS/tLrxLQ4oI8+Sww3RL9H9VBsThKBpc9p/Gk=; b=K5/Kn6cFMb9LpqpOmmVr3AL3ai
 0vZiISKwXqKUiJyr5NDOKZcFSpggWGsQkawGPm3P7UqdnGkVIGS0HN54pOlcTrJ8rePonZkJs3Cil
 8bG5OKkn5iawEo8woWwszoVV1jztfvn8yDDH4UUHHaZgV+LkaxPvvIKtxh7sEHllokJHoVwbKvpOR
 ENvaQDOMDREuKSfPLrgrnsEd9eK2C9hvWh0vih31N633ucRXxLWAkuGXNyd7W0qzrIZ0pV3+UyCxA
 ivXc9kNZLeJEgwy4smO9WMtwJHqptMT8zrurd6/ISPrEggAEdLgDwvS6/Hx+XBRJGJhsBKQH7y+wz
 1FJWbVoA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1ovYR9-00Aqki-1y; Thu, 17 Nov 2022 06:31:47 +0000
Date: Wed, 16 Nov 2022 22:31:47 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <Y3XVU/gdoT5EH6xh@infradead.org>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-3-hch@lst.de>
 <20221114104927.k5x4i4uanxskfs6m@quack3>
 <Y3UMV2mB5BkMM5PY@infradead.org>
 <20221116182040.tecis3dqejsdqnum@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116182040.tecis3dqejsdqnum@quack3>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 16, 2022 at 07:20:40PM +0100, Jan Kara wrote:
 > Looking at the code, IMO the write_one_page() looks somewhat premature >
 anyway in that place. AFAICS we could handle the writeout using > f [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ovYRf-00B5sl-TL
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
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net,
 Bob Copeland <me@bobcopeland.com>, Namjae Jeon <linkinjeon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, linux-mm@kvack.org,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Christoph Hellwig <hch@lst.de>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Nov 16, 2022 at 07:20:40PM +0100, Jan Kara wrote:
> Looking at the code, IMO the write_one_page() looks somewhat premature
> anyway in that place. AFAICS we could handle the writeout using
> filemap_write_and_wait() if we moved it to somewhat later moment. So
> something like attached patch (only basic testing only so far)?

Yes, this looks sensible.  Do you want to queue this one and the
ext2 and udf patches from this series if the testing works fine?

The same transformation should also be done for minix, sysfs and
ufs.  And a bunch of the others are probaby similar as well.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
