Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 465DF31E1C5
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Feb 2021 23:04:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lCUw0-0006mA-M0; Wed, 17 Feb 2021 22:04:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1lCUul-0002iL-2g
 for jfs-discussion@lists.sourceforge.net; Wed, 17 Feb 2021 22:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j/swmSyrjf5WkrQOlc/7BN1j3SztJyqtEtvjUfCJlBQ=; b=kik0nz1/NQozfFbJ6xufX/QNtl
 aFL61jRybNHiFrxNfXzYUiyq5jNxoFCEzGtyyx9nZLlbcABubXcUJVWHXBd9Prh7v/MbZNacb4jqv
 YJyT8jiBtN2QoOLHdhXZ81hA7REb59LEh5R0d6SpPyf2JLk1eT9EY5pZ740Re90XbM8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j/swmSyrjf5WkrQOlc/7BN1j3SztJyqtEtvjUfCJlBQ=; b=MMmuRRL5lWoRdq8UDqfIlwbPxK
 wqH+uwF/Lr2qLc/bjnkIg7WJ747c+9sDdqSiolNTcQHXpDt9j9OmdJ6CH00XdtW/zsWk+P//+GWq6
 +Vk5ZetSe64xtj4zQGA3IKZhQ84SuzJbNhIO/QLiNxw40uNIxuwyCrtzsEkSBEirOZ2Y=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lCUuc-00D44b-BM
 for jfs-discussion@lists.sourceforge.net; Wed, 17 Feb 2021 22:03:19 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 88A821C0B8E; Wed, 17 Feb 2021 23:02:59 +0100 (CET)
Date: Wed, 17 Feb 2021 23:02:58 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Message-ID: <20210217220257.GA10791@amd>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
 <20210128071133.60335-30-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
In-Reply-To: <20210128071133.60335-30-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lCUuc-00D44b-BM
X-Mailman-Approved-At: Wed, 17 Feb 2021 22:04:26 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 29/34] power/swap: use bio_new in
 hib_submit_io
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 gustavoars@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, linux-nvme@lists.infradead.org,
 philipp.reisner@linbit.com, linux-mm@kvack.org, dm-devel@redhat.com,
 target-devel@vger.kernel.org, alex.shi@linux.alibaba.com, hch@lst.de,
 agk@redhat.com, drbd-dev@lists.linbit.com, naohiro.aota@wdc.com,
 linux-nilfs@vger.kernel.org, sagi@grimberg.me, linux-scsi@vger.kernel.org,
 mark@fasheh.com, konrad.wilk@oracle.com, osandov@fb.com, ebiggers@kernel.org,
 xen-devel@lists.xenproject.org, ngupta@vflare.org, len.brown@intel.com,
 linux-pm@vger.kernel.org, hare@suse.de, ming.lei@redhat.com,
 linux-block@vger.kernel.org, tj@kernel.org, linux-fscrypt@vger.kernel.org,
 viro@zeniv.linux.org.uk, jefflexu@linux.alibaba.com, jaegeuk@kernel.org,
 jlbec@evilplan.org, konishi.ryusuke@gmail.com, bvanassche@acm.org,
 axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com,
 joseph.qi@linux.alibaba.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, minchan@kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 ocfs2-devel@oss.oracle.com, roger.pau@citrix.com
Content-Type: multipart/mixed; boundary="===============4792445369733568915=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============4792445369733568915==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!
>=20
> diff --git a/kernel/power/swap.c b/kernel/power/swap.c
> index c73f2e295167..e92e36c053a6 100644
> --- a/kernel/power/swap.c
> +++ b/kernel/power/swap.c
> @@ -271,13 +271,12 @@ static int hib_submit_io(int op, int op_flags, pgof=
f_t page_off, void *addr,
>  		struct hib_bio_batch *hb)
>  {
>  	struct page *page =3D virt_to_page(addr);
> +	sector_t sect =3D page_off * (PAGE_SIZE >> 9);
>  	struct bio *bio;
>  	int error =3D 0;
> =20
> -	bio =3D bio_alloc(GFP_NOIO | __GFP_HIGH, 1);
> -	bio->bi_iter.bi_sector =3D page_off * (PAGE_SIZE >> 9);
> -	bio_set_dev(bio, hib_resume_bdev);
> -	bio_set_op_attrs(bio, op, op_flags);
> +	bio =3D bio_new(hib_resume_bdev, sect, op, op_flags, 1,
> +		      GFP_NOIO | __GFP_HIGH);
> =20

C function with 6 arguments... dunno. Old version looks comparable or
even more readable...

Best regards,
							Pavel

--=20
http://www.livejournal.com/~pavelmachek

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmAtkpEACgkQMOfwapXb+vL5ywCguk9XRtMJ4/rJgwKlR42qzH7B
ww4AoK8H3c5uHgpu/eHAUqpvoYMrxHuL
=Rk1V
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--


--===============4792445369733568915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4792445369733568915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============4792445369733568915==--

