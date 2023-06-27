Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9208273EFD2
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Jun 2023 02:40:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qDwkz-0002aO-G5;
	Tue, 27 Jun 2023 00:40:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qDwkv-0002aI-5O
 for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Jun 2023 00:40:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86MSvmvVSt9S2UtHlwSRj79shZcJbZGSCsSZwTfwkJk=; b=SHfqqrtik+74lVXO9xmmNkXOoc
 LJRWoUOrXTNWuafHELxHPG6RWkkNry1KXqzD8kCwUnVjFf2k+qQuaTXfWe2BmMGminDQOJAYCzL4h
 nv1kS48U0w+5Z+fH4fs0gzL+au3t4UuLgG43msFGZ65TMRFpiGX4TlDZjvfo7PjbbMnQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=86MSvmvVSt9S2UtHlwSRj79shZcJbZGSCsSZwTfwkJk=; b=WuaTguRs8faXJPCJKmk/fNbGay
 mAFWFLpJjcag41PK9gWM11oYUsKANzVDCXV9dKyR4rK71ToCzMmPfNaoPSHrVVEimMA9JD7Urdueg
 1GPyjeE7rPE/XVSGgYZbfDwQR+G8yOaCsyrRzKsrFoACrvV3Jsth3yOpNvt68jWs9ySU=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qDwkv-00FmMy-3S for jfs-discussion@lists.sourceforge.net;
 Tue, 27 Jun 2023 00:40:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86MSvmvVSt9S2UtHlwSRj79shZcJbZGSCsSZwTfwkJk=; b=rdhQ3MKhSmA+Kq18olbUOmRVcx
 JTM83gTdGekmoSzFenUNRlAezwyw8Dsz7oYoCTN0hHNQhEB+DE0/Ghob/LZB1QsjxZYsGr6ocOtth
 Jz8qDxLjG0I6bv8pxYj5RS08uiYfI+EPWrjS4ic4ANLs5/lRc4Q9c7sfsYeq22UO7r4bJtW5kl5/V
 94dgIwlgoXSAvwskV+QXDJajq3ZZmTnZ4qiJhyfvqKxaT8JUL79JgeKoLbLGqvtELjekL84nSZZ/O
 RmY5ibnDgFSrn5eUFE5iPiVAZrX5ouWREATUfYae/92OZXkLPd4JCyEaxSaslWCgrFawOdy/YpuAT
 di+WAs/Q==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qDwkX-00GBMN-U9; Tue, 27 Jun 2023 00:40:05 +0000
Date: Tue, 27 Jun 2023 00:40:05 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <ZJov5VNakxNXU0Mk@gallifrey>
References: <ZJhPIYSUzBpuqosh@gallifrey>
 <25821273-d391-1502-ff8a-07ea7a59c8f3@oracle.com>
 <CAH2r5mvwZnd+S8CmZGQSdtnAWD45YjFx-1j0EaFBR3Qn-SjHEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5mvwZnd+S8CmZGQSdtnAWD45YjFx-1j0EaFBR3Qn-SjHEA@mail.gmail.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-21-amd64 (x86_64)
X-Uptime: 00:29:06 up 99 days, 11:03, 1 user, load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * Steve French (smfrench@gmail.com) wrote: > probably is low
 risk to make the ksmbd/cifs (server and client) code common > for this I'm
 up for trying to do that mod; do you have a feel of the best way? I guess
 this is two copies to avoid symbol clashes if both the server and clients
 are built/loaded on the same kernel? 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qDwkv-00FmMy-3S
Subject: Re: [Jfs-discussion] Duplicate unicode tables in smb/cifs/jfs
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, sfrench@samba.org, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

KiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNvbSkgd3JvdGU6Cj4gcHJvYmFibHkgaXMg
bG93IHJpc2sgdG8gbWFrZSB0aGUga3NtYmQvY2lmcyAoc2VydmVyIGFuZCBjbGllbnQpIGNvZGUg
Y29tbW9uCj4gZm9yIHRoaXMKCkknbSB1cCBmb3IgdHJ5aW5nIHRvIGRvIHRoYXQgbW9kOyBkbyB5
b3UgaGF2ZSBhIGZlZWwgb2YgdGhlIGJlc3Qgd2F5PwpJIGd1ZXNzIHRoaXMgaXMgdHdvIGNvcGll
cyB0byBhdm9pZCBzeW1ib2wgY2xhc2hlcyBpZiBib3RoIHRoZSBzZXJ2ZXIKYW5kIGNsaWVudHMg
YXJlIGJ1aWx0L2xvYWRlZCBvbiB0aGUgc2FtZSBrZXJuZWw/CgpJIGd1ZXNzIHRoZSBjbGVhbiB3
YXkgaXMgdG8gbWFrZSB0aGlzIGEgc2VwYXJhdGUgLmMvbW9kdWxlIHRoYXQgdGhlCm90aGVycyBk
ZXBlbmQgb24gYW5kIGh0ZW4geW91IGhhdmUgYSBuaWNlIHNpbmdsZSBjb3B5IGluIHRoZSBiaW5h
cnkKYXMgd2VsbCBhcyB0aGUgc291cmNlLgoKVGhlIHNob3J0ZXIgaGFjayB0aGF0IGF0IGxlYXN0
IGF2b2lkcyB0aGUgc291cmNlIGR1cGUgd291bGQgYmUgdG8KY2hhbmdlIHRoZSBkZWNsYXJhdGlv
bnMgaW4gdGhlIHVuaXVwci5oIGZpbGVzIHRvIGEgI2RlZmluZSB0aGF0IHRoZW4KaW5zdGFudGlh
dGVzIGl0IHdpdGggZGlmZmVyZW50IG5hbWVzIGluIHRoZSBwbGFjZSB0aG9zZSBhcmUgI2luY2x1
ZGVkLgpZb3UnZCB3YW50IHRvIG1vdmUgdGhlIHVuaXVwci5oIHVwIHNvbWV3aGVyZSwgdG8gaG1t
IGZzL3VuaXVwci5oID8KCihJbmNpZGVudGFsbHksIEkgdGhpbmsgdGhlIFVOSVVQUl9OT0xPV0VS
IGlzIGFsd2F5cyBkZWZpbmVkCnNvIHRoYXQgd2hvbGUgY2h1bmsgY2FuIGdvIGluIGJvdGggb2Yg
dGhlbSkuCgpJIGd1ZXNzIHRoZSBuZXh0IGxldmVsIHdvdWxkIGJlIHRyeWluZyB0byBtZXJnZSBw
YXJ0cyBvZiBzZXJ2ZXIvY2xpZW50CnVuaWNvZGUuW2NoXSAtIGJ1dCBJIHdhcyBqdXN0IGV5ZWlu
ZyB1cCB0aGlzIHBhcnRpY3VsYXJseSBzaW1wbGUgZHVwZSBpbgp0aGF0IG9kZCB1bml1cHIuaC4K
Cj4gKGFuZCBsZWF2ZSB0aGUgSkZTIGNvZGUgYWxvbmUgYXMgRGF2ZSBLbGVpa2FtcCBzdWdnZXN0
cykKCldlbGwgaG1tOyBteSByZWFkaW5nIGlzIHRoZSB0YWJsZXMgdGhhdCBKRlMgdXNlcyBhcmUg
KmlkZW50aWNhbCoKdG8gdGhlc2U7IHNvIGlmIHRoaXMgaGVhZGVyIHdhcyBzb21ld2hlcmUgb3V0
c2lkZSBvZiBmcy9zbWIgaXQgY291bGQKcHJvYmFibHkgI2luY2x1ZGUgaXQgYW5kIGp1c3QgdXNl
IHRoZSBzYW1lIHRhYmxlLCB3aXRoIGEKbm8tYmluYXJ5LWNoYW5nZS4KCkRhdmUKCj4gT24gTW9u
LCBKdW4gMjYsIDIwMjMgYXQgMTI6MDPigK9QTSBEYXZlIEtsZWlrYW1wIDxkYXZlLmtsZWlrYW1w
QG9yYWNsZS5jb20+Cj4gd3JvdGU6Cj4gCj4gPiBPbiA2LzI1LzIzIDk6MjhBTSwgRHIuIERhdmlk
IEFsYW4gR2lsYmVydCB3cm90ZToKPiA+ID4gSGkgQWxsLAo+ID4gPiAgICBJIGp1c3QgdHJpcHBl
ZCBvdmVyIHRocmVlIHNldHMgb2YgZHVwbGljYXRlZCB1bmljb2RlIHRhYmxlcyBhbmQKPiA+ID4g
d29uZGVyZWQgaWYgYW55b25lIGhhZCB0cmllZCB0byByYXRpb25hbGlzZSB0aGVtOgo+ID4gPgo+
ID4gPiAgICBUaGUgcGFpciBvZjoKPiA+ID4gICAgIC4vZnMvc21iL3NlcnZlci91bml1cHIuaAo+
ID4gPiAgICAgLi9mcy9zbWIvY2xpZW50L2NpZnNfdW5pdXByLmgKPiA+ID4KPiA+ID4gICAgIGFy
ZSBpZGVudGljYWwgZXhjZXB0IGZvciBmb3JtYXR0aW5nLgo+ID4gPgo+ID4gPiAuL2ZzL2pmcy9q
ZnNfdW5pdXByLmMsCj4gPiA+ICAgIGFuZCBJIHRoaW5rIHRoaXMgaXMgdGhlIHNhbWUgd2l0aCBz
b21lIGNoYW5nZSBpbiB2YXJpYWJsZSBuYW1lLgo+ID4KPiA+ICBGcm9tIEpGUydzIHBvaW50IG9m
IHZpZXcsIEkgd29uZGVyIGhvdyByZWxldmFudCBhbnkgb2YgdGhpcyBjb2RlIGlzLgo+ID4gVGhl
IExpbnV4IHBvcnQgb2YgSkZTIG9yaWdpbmFsbHkgd2FzIGludGVyZXN0ZWQgaW4gY29tcGF0aWJp
bGl0eSB3aXRoCj4gPiBPUy8yLCB3aGljaCBoYWQgY2FzZS1pbnNlbnNpdGl2ZSBmaWxlIG5hbWVz
LiAoQ2FzZS1wcmVzZXJ2aW5nLCBpZiBJCj4gPiByZW1lbWJlciBjb3JyZWN0bHksIGJ1dCBuYW1l
cyB3b3VsZCBtYXRjaCBpbiBhIGNhc2UtaW5zZW5zaXRpdmUgbWFubmVyLikKPiA+Cj4gPiBJIHdv
dWxkIGJlIHN1cnByaXNlZCBpZiBhbnlvbmUgY2FyZXMgYWJvdXQgdGhpcyBmZWF0dXJlIGFueW1v
cmUuIFdpdGhvdXQKPiA+IGEgSkZTX09TMiBmbGFnIHNldCBpbiB0aGUgc3VwZXJibG9jaywgbm9u
ZSBvZiB0aGUgY2FzZS1jb252ZXJzaW9uIGNvZGUKPiA+IGNvbWVzIGludG8gcGxheS4KPiA+Cj4g
PiBJIGFzc3VtZSBTTUIgY2FyZXMgbW9yZSBhYm91dCB0aGlzIGFuZCBpZiBTdGV2ZSBoYXMgYW4g
b3BpbmlvbiBvbiBob3cgdG8KPiA+IGFkZHJlc3MgdGhpcywgSSdkIGJlIGhhcHB5IHRvIGZvbGxv
dyBoaXMgbGVhZC4gUHJvYmFibHkgYmV0dGVyIHRoYW4KPiA+IHJpcHBpbmcgZnVuY3Rpb24gb3V0
IG9mIEpGUyB0aGF0IGNvdWxkIGJyZWFrIHNvbWUgdXNlciB0aGF0IEknbSBub3QKPiA+IGF3YXJl
IG9mLgo+ID4KPiA+IFNoYWdneQo+ID4KPiA+ID4KPiA+ID4gKEknbSBndWVzc2luZyB0aGUgc2Ft
ZSB0aGluZyBpcyBpbXBsZW1lbnRlZCBpbiBhIGJ1bmNoIG9mCj4gPiA+IG90aGVyIHBsYWNlcyBh
cyB3ZWxsIGluIGEgZGlmZmVyZW50IHdheSkKPiA+ID4KPiA+ID4gV291bGQgaXQgbWFrZSBzZW5z
ZSB0byBzd2luZyBmcy9zbWIvc2VydmVyL3VuaXVwci5oIHVwIHRvCj4gPiA+IGhtbSwgbWF5YmUg
ZnMvdW5pdXByLmgsIHJlbW92ZSBhbnkgb2YgdGhlIGNpZnNfIHByZWZpeGVzCj4gPiA+IGFuZCB0
aGVuIHVzZSB0aGUgc2FtZSBpbmNsdWRlIGluIGFsbCAzIHBsYWNlcz8KPiA+ID4KPiA+ID4gTWF5
YmUgdGhlbiBsYXRlciBsb29rIGF0IHVzaW5nIHNvbWUgb2YgdGhlIG5scyBjb2RlPwo+ID4gPgo+
ID4gPiBEYXZlICh3aG8ganVzdCB0cmlwcGVkIG92ZXIgdGhpcyBzdHVmZikKPiA+ID4KPiA+Cj4g
Cj4gCj4gLS0gCj4gVGhhbmtzLAo+IAo+IFN0ZXZlCi0tIAogLS0tLS1PcGVuIHVwIHlvdXIgZXll
cywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAgeW91ciBjb2RlIC0tLS0tLS0gICAKLyBEci4g
RGF2aWQgQWxhbiBHaWxiZXJ0ICAgIHwgICAgICAgUnVubmluZyBHTlUvTGludXggICAgICAgfCBI
YXBweSAgXCAKXCAgICAgICAgZGF2ZSBAIHRyZWJsaWcub3JnIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCBJbiBIZXggLwogXCBfX19fX19fX19fX19fX19fX19fX19fX19ffF9fX19f
IGh0dHA6Ly93d3cudHJlYmxpZy5vcmcgICB8X19fX19fXy8KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QK
SmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
