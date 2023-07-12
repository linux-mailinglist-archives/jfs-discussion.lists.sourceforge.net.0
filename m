Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C31750D90
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Jul 2023 18:07:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qJcMm-0007qN-Fs;
	Wed, 12 Jul 2023 16:07:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <haris.iqbal@ionos.com>) id 1qJcMl-0007qH-Il
 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 16:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8X6ArMXh62A5UxRR3ZN+q1CvObhoeb8ltfmXU1xj+zw=; b=PEZZXHz5TwhdCSEu72IX5Vm+7m
 9TiNb6M0FCnl1ffZ61WwcOifkgMckXTpzS+Dr/OS10ViNFYVrW+bgcBIvpl/+Xpf4cO2qK34XN0fM
 7b67uXlbfSLA76opRn/feTZhNHMATW8jiigQToZQRR0ez/cY4EsHtSFOKufPN+SlDqzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8X6ArMXh62A5UxRR3ZN+q1CvObhoeb8ltfmXU1xj+zw=; b=m3cm2gDoil57RmKq3xHWetTomi
 EyIHwtICqceHiLhqLsYITxdY1c7edIeHpPNWCJ/2RbBT6AzDKOptcvqYZ88eQJEIWXHx34Kof4YZl
 sTZDCq0kUSjTZBbZUHK4yHtg89/rv2SxFYhBW3Cn4TtH/cla0DyeKl+Mp4Wyml8TpO58=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qJcMi-005evN-3K for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 16:06:59 +0000
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-4fb863edcb6so11538961e87.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Jul 2023 09:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1689178006; x=1691770006;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8X6ArMXh62A5UxRR3ZN+q1CvObhoeb8ltfmXU1xj+zw=;
 b=V0Mwyzpfv5NHo344FebMkemb4OkDhqesSJzk3oLJrC1sXingJzi/DqoHJPX3cM7/kU
 /daZbGumusx7p3ETz9bL+dV7+a249DzrdJ5ucaxUqFs1cH4q4UNK1aBbCP0kRMVezgvK
 Gb0u18D1omT5qk875/bvJSIuyWWXlLKu5WnA0OT929rTcOY7rHqZVsWOvIcdQTq+Q4TI
 Xty8IQiQ2uEFjkBqRHhjaYUeIIjdk3TlKuW6ZBNL29/kZI8LKdOXvAAi+FiRNxSMUXsG
 92h/diWQ5jGfG/Pc/9JTOLcLZ2bS8Hyd3sIfxIs/rFITeR6YjIQmonhcUevYE5m/zN7s
 SmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689178006; x=1691770006;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8X6ArMXh62A5UxRR3ZN+q1CvObhoeb8ltfmXU1xj+zw=;
 b=eXp+p9foyzm0snTWgFc4cARLcxglwdR7SU30YMUKPKHjOf0dTlpjuM/S1qDbbpcdBc
 bFWiYuLUHeFlOLgM7vdAS323is8ZAO442Ud6L0dWIOBCRF4ocZHpv0iX1f6lsQv+55tB
 9NVC4DzFnt0uLK/XivbZ0e1h8yWPfCOSs1IrCY9g70FnHWRgLgcX0NaHXesGmM7cryXX
 YLvOOftr1xcaU50dSpnx/yqZBuHeqeO3n8eJheY/HKc5jHmuCDYLiVEqwlctT+0KV4Uc
 umgQt5IxUAsjOd0xo6c4CP3InyRFx4fa3uUWxkIrSdkMEYj6U/M5hbFv+7PqgVRXSHcO
 PKhQ==
X-Gm-Message-State: ABy/qLYMkqwqdNK1eSKQ3ZPIQNzwBEeeay1CfPd2BK73rxF9tNgsRm7N
 RKn1SbJHTQaKyGO8lCn9udi7rUJ2665B9cQc6x33tg==
X-Google-Smtp-Source: APBJJlHjPtNIqZNhhKZT3JSG1orBAozCwd3+TwwvFjulJuToD7D5iIrA7grwKZQU8Z67qc0UJ0oDxWof6WbkdfMRi3A=
X-Received: by 2002:ac2:5b1d:0:b0:4fb:7a90:1abe with SMTP id
 v29-20020ac25b1d000000b004fb7a901abemr15797051lfn.49.1689178006211; Wed, 12
 Jul 2023 09:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230629165206.383-1-jack@suse.cz>
 <20230704122224.16257-1-jack@suse.cz>
 <ZKbgAG5OoHVyUKOG@infradead.org>
In-Reply-To: <ZKbgAG5OoHVyUKOG@infradead.org>
Date: Wed, 12 Jul 2023 18:06:35 +0200
Message-ID: <CAJpMwyiUcw+mH0sZa8f8UJsaSZ7NSE65s2gZDEia+pASyP_gJQ@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jul 6, 2023 at 5:38 PM Christoph Hellwig <hch@infradead.org>
    wrote: > > On Tue, Jul 04, 2023 at 02:21:28PM +0200, Jan Kara wrote: > >
   Create struct bdev_handle that contains all parameters t [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.41 listed in wl.mailspike.net]
X-Headers-End: 1qJcMi-005evN-3K
Subject: Re: [Jfs-discussion] [PATCH 01/32] block: Provide
 blkdev_get_handle_* functions
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
From: Haris Iqbal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Haris Iqbal <haris.iqbal@ionos.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Darrick J. Wong" <djwong@kernel.org>,
 linux-nvme@lists.infradead.org, Joseph Qi <joseph.qi@linux.alibaba.com>,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Jack Wang <jinpu.wang@ionos.com>,
 Alasdair Kergon <agk@redhat.com>, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, Sergey Senozhatsky <senozhatsky@chromium.org>,
 xen-devel@lists.xenproject.org, Gao Xiang <xiang@kernel.org>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, linux-pm@vger.kernel.org,
 Mike Snitzer <snitzer@kernel.org>, Chao Yu <chao@kernel.org>,
 Joern Engel <joern@lazybastard.org>, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, Ted Tso <tytso@mit.edu>,
 linux-mm@kvack.org, Song Liu <song@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, ocfs2-devel@oss.oracle.com,
 Anna Schumaker <anna@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBKdWwgNiwgMjAyMyBhdCA1OjM44oCvUE0gQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBp
bmZyYWRlYWQub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVsIDA0LCAyMDIzIGF0IDAyOjIxOjI4
UE0gKzAyMDAsIEphbiBLYXJhIHdyb3RlOgo+ID4gQ3JlYXRlIHN0cnVjdCBiZGV2X2hhbmRsZSB0
aGF0IGNvbnRhaW5zIGFsbCBwYXJhbWV0ZXJzIHRoYXQgbmVlZCB0byBiZQo+ID4gcGFzc2VkIHRv
IGJsa2Rldl9wdXQoKSBhbmQgcHJvdmlkZSBibGtkZXZfZ2V0X2hhbmRsZV8qIGZ1bmN0aW9ucyB0
aGF0Cj4gPiByZXR1cm4gdGhpcyBzdHJ1Y3R1cmUgaW5zdGVhZCBvZiBwbGFpbiBiZGV2IHBvaW50
ZXIuIFRoaXMgd2lsbAo+ID4gZXZlbnR1YWxseSBhbGxvdyB1cyB0byBwYXNzIG9uZSBtb3JlIGFy
Z3VtZW50IHRvIGJsa2Rldl9wdXQoKSB3aXRob3V0Cj4gPiB0b28gbXVjaCBoYXNzbGUuCj4KPiBD
YW4gd2UgdXNlIHRoZSBvcHBvcnR1bml0eSB0byBjb21lIHVwIHdpdGggYmV0dGVyIG5hbWVzPyAg
YmxrZGV2X2dldF8qCj4gd2FzIGFsd2F5cyBhIHJhdGhlciBob3JyaWJsZSBuYW1pbmcgY29udmVu
dGlvbiBmb3Igc29tZXRoaW5nIHRoYXQKPiBlbmRzIHVwIGNhbGxpbmcgaW50byAtPm9wZW4uCj4K
PiBXaGF0IGFib3V0Ogo+Cj4gc3RydWN0IGJkZXZfaGFuZGxlICpiZGV2X29wZW5fYnlfZGV2KGRl
dl90IGRldiwgYmxrX21vZGVfdCBtb2RlLCB2b2lkICpob2xkZXIsCj4gICAgICAgICAgICAgICAg
IGNvbnN0IHN0cnVjdCBibGtfaG9sZGVyX29wcyAqaG9wcyk7Cj4gc3RydWN0IGJkZXZfaGFuZGxl
ICpiZGV2X29wZW5fYnlfcGF0aChkZXZfdCBkZXYsIGJsa19tb2RlX3QgbW9kZSwKPiAgICAgICAg
ICAgICAgICAgdm9pZCAqaG9sZGVyLCBjb25zdCBzdHJ1Y3QgYmxrX2hvbGRlcl9vcHMgKmhvcHMp
Owo+IHZvaWQgYmRldl9yZWxlYXNlKHN0cnVjdCBiZGV2X2hhbmRsZSAqaGFuZGxlKTsKCisxIHRv
IHRoaXMuCkFsc28sIGlmIHdlIGFyZSByZW1vdmluZyAiaGFuZGxlIiBmcm9tIHRoZSBmdW5jdGlv
biwgc2hvdWxkIHRoZSBuYW1lCm9mIHRoZSBzdHJ1Y3R1cmUgaXQgcmV0dXJucyBhbHNvIGNoYW5n
ZT8gV291bGQgc29tZXRoaW5nIGxpa2UgYmRldl9jdHgKYmUgYmV0dGVyPwoKKEFwb2xvZ2llcyBm
b3IgdGhlIHByZXZpb3VzIG5vbi1wbGFpbnRleHQgZW1haWwpCgo+Cj4gPwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
